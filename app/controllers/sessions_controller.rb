class SessionsController < ApplicationController
	def new
  	end

  	def create
  		user = User.find_by(login: params[:session])
    	if user && user.authenticate(params[:session][:password])
      		sign_in user
      		redirect_to user
    	else
      		flash.now[:error] = 'Неправильный логин или пароль!'
      		render 'new'
    	end
  	end

  	def destroy
  	end
end