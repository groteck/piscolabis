class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :menu
                  
  def menu
     @categories=Type.all
  end
  #We don't want to render the layout if PJAX is working
  def render(options = nil, extra_options = {}, &block)
    if request.headers['X-PJAX'] == 'true'
      options = {} if options.nil?
      options[:layout] = false 
    end
    super(options, extra_options, &block)
  end
  private

  def current_order
    Order.find(session[:order_id]) rescue nil
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

  def current_user_cooker
    if current_user == nil
    redirect_to root_path
    else
      if current_user.ugroupe_id > 2
        redirect_to root_path
      end
    end
  end

helper_method :current_order
helper_method :current_user_admin
helper_method :current_user_cooker
end
