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
end
