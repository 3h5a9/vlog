class Admin::ApplicationController < ApplicationController
  before_action :authorized


  def current_moderator
  end

  def authorized
    unless current_moderator
      redirect_to login_path
    end
  end
end