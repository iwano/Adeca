Devise::RegistrationsController.class_eval do
  def new
    redirect_to new_admin_session_path
  end
end
