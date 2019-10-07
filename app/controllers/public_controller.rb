class PublicController < ApplicationController
  def index
    if user_signed_in?
      redirect_to businesses_path
    else
      redirect_to new_user_session_path
    end
  end

  def about
  end

  def service
  end

  def contact
  end
end
