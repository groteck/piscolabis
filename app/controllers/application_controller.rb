class ApplicationController < ActionController::Base
  protect_from_forgery

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
  helper_method :current_order
  helper_method :current_user_admin
end
