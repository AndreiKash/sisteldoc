class UsersController < ApplicationController
    before_action :signed_in_user
    before_action :correct_user,   only: [:edit, :update]
  	
    def show
    	@user = User.find(params[:id])
  	end

	def new
    	@user = User.new
      @sub_options = Subdivision.all.map{|u| [ u.fullname, u.id] }
  	end

  	def create
      @sub_options = Subdivision.all.map{|u| [ u.id] }
    	@user = User.new(user_params)
    	if @user.save
    		flash.now[:success] = "Добро пожаловать в Систему электронного документооборота!"
      	redirect_to @user
    	else
      		render 'new'
    	end
  	end

    def edit
      @user = User.find(params[:id])
      @sub_options = Subdivision.all.map{|u| [ u.fullname, u.id] }
    end

    def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        flash[:success] = "Профиль изменен"
        redirect_to @user
      else
        render 'edit'
      end
    end

    def destroy
      User.find(params[:id]).destroy
      flash[:success] = "User deleted."
      redirect_to internal_directory_path
    end

  	private

    def user_params
      params.require(:user).permit(:name, :login, :password, :password_confirmation, :subdivision_id)
    end

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Пожалуйста, войдите в систему."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
