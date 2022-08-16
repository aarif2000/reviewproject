class UsersController < ApplicationController
  # load_and_authorize_resource
  def index
    @users = User.all
  end

  def show
    @users=User.find(params[:id])
  end

  def new
    @users=User.new
  end

  def create 
    User.create(:name=>params[:name],:email=>params[:email],:password=>params[:password],current_role: params[:current_role])
    redirect_to users_path
  end

  def update 

    @user = User.find(params[:id])
    @user.update(name: params[:name],current_role: params[:curent_role])
    redirect_to users_path
  end

  def edit

  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to users_path

  end

  def after_registration_path
    
  end
  

  private 

  def user_params
    params.require(:user).permit(:name , :role)
  end
end
