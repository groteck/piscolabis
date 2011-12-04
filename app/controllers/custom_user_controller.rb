class CustomUserController < Devise::RegistrationsController
  def create
    super
    if User.last.id == 1 
      User.last.ugroupe = 1
    end
  end
end
