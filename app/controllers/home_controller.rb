class HomeController < ApplicationController
  def index
    if flash[:redirect]=="1"
      redirect_to users_path
    end
  end
end
