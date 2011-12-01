class CustomUserController < Devise::RegistrationsController
  prepend_view_path "app/views/devise"
  def create
    super
    if user.last.id == 1 
      user.last.admin = true
    end
  end
end
