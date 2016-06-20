class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid']).first || User.create_with_omniauth(auth)
    sign_in user, :event => :authentication
    redirect_to root_path, :notice => "You have successfully signed in!"
  end

end
