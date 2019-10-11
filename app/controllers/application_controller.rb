class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    
    def page_not_found
      render :file => "#{Rails.root}/public/404.html", :status => 404
    end
  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  
end
