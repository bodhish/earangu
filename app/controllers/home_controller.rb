class HomeController < ApplicationController
  def index
    redirect_to category_path(1)
  end
end
