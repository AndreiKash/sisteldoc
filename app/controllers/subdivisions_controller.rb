class SubdivisionsController < ApplicationController
  before_action :signed_in_user
  before_action :correct_user,   only: [:edit, :update]

  	def show
    	@subdivision = Subdivision.find(params[:id])
  	end

	def new
    	@subdivision = Subdivision.new
  	end

  	def create
    	@subdivision = Subdivision.new(subdivision_params)
    	if @subdivision.save
    		flash.now[:success] = "Подразделение создано"
      	redirect_to @subdivision
    	else
      		render 'new'
    	end
  	end

  	private

    def subdivision_params
      params.require(:subdivision).permit(:fullname, :name, :leader)
    end

    def signed_in_user
      redirect_to signin_url, notice: "Пожалуйста, войдите в систему." unless signed_in?
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
end
