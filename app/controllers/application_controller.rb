class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery
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
  private 
  def migration_not_run
    flash[:notice] = "Some migrations are pending"
    redirect_to(root_path)
  end

  
end
