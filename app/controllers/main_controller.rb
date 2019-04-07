class MainController < ApplicationController
  def index
  end

  def home
  end

  def show
  	render params[:page]
  end
end
