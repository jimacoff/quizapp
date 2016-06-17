class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2

    @user = User.create_with_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in @user, :event => :authentication
      redirect_to root_path
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to root_path, flash[:notice] => "failure"
    end
  end

end
