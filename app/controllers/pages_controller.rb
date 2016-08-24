class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def index
  end

  def account
  end

  def tips
  end

  def reachout
  end

  def privacy
  end

  private
  def find_user
    @user = User.find_by(session[:user_id])
  end
end
