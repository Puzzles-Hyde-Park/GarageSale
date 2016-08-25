class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    render layout: "layouts/index"
  end

  def account
  end

  def tips
  end

  def reachout
  end

  def privacy
  end

  def tos
  end

end
