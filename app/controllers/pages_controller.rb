class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    render layout: "layouts/index" and return
    if user_signed_in?
      redirect_to :home_path
    end
  end

  def home
  end

  def account
  end

  def tips
  end

  def reachout
  end

  def privacy
  end

end
