class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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
end
