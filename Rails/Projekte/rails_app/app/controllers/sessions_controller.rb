class SessionsController < ApplicationController

	def new
		
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Welcome back #{user.name}"
			redirect_to root_path
		else
			flash.now[:alert] = "Benutzerdaten sind falsch"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "Ausgeloggt. Bye, bye love."
	end
end
