class UsersController < ApplicationController
  def index
    @user = User.new(params[:user])
    
  end

  def show
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      p "1111111111111111"
      @user.name.present?
      flash.now[:success] = I18n.t :success, :scope => [:user, :create]
      UserMailer.welcome_email(@user).deliver
      # flash.now[:success] = I18n.t :success, :scope => [:user, :create]
      redirect_to root_path
    else
      flash.now[:fail] = I18n.t :fail, :scope => [:user, :create]
      render "new"
    end
  end


  def edit
  end

  def new
  end
  def user_params
    params.require(:user).permit( :name, :email, :details)
  end
end




