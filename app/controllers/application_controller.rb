class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :menu
  def menu
     @categories=Type.all
  end

  private

  def current_order
    Order.find(session[:order_id])
    rescue ActiveRecord::RecordNotFound
      order = Order.create
      session[:order_id] = order.id
      order
  end
  def current_user_admin
      if current_user == nil
         redirect_to root_path
      else
            if current_user.ugroupe_id != 1
                redirect_to root_path
            end
      end
  end
<<<<<<< HEAD
  def current_user_cooker
      if current_user == nil
          redirect_to root_path
      else
          if current_user.ugroupe_id > 2
              redirect_to root_path
          end
      end
  end
=======
  helper_method :current_order
>>>>>>> fraire
  helper_method :current_user_admin
  helper_method :current_user_cooker
end
