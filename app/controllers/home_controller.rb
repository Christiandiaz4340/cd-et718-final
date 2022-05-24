class HomeController < ApplicationController
  def index
    @user = User.includes(:skills, :languages, :experiences).first
  end
end
