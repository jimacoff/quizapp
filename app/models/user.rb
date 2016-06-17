class User
  include Mongoid::Document
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable

  validates_uniqueness_of :email, case_sensitive: false
  validates_presence_of :email

  ## Database authenticatable
  field :provider, type: String
  field :uid, type: String
  field :score, type: Integer, default: 0
  field :email, type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth['provider']
        user.uid = auth['uid']
        if auth['info']
          user.email = auth['info']['email'] || ""
          user.password = ""
        end
      end
  end

end
