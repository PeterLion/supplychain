class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery

    before_action :configure_permitted_parameters, if: :devise_controller?

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    rescue_from ActiveRecord::PendingMigrationError , with: :migration_not_run
    def page_not_found
      render :file => "#{Rails.root}/public/404.html", :status => 404
    end
  private
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
 
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:name])
    devise_parameter_sanitizer.permit(:account_update,keys: [:name])
  end

  
end
