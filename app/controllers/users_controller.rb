class UsersController < ApplicationController
	def login
	end

	def create
		user = User.where("firebase_id = ? or email = ?", params[:user][:firebase_id], params[:user][:email])[0]
		if user
			user.update(firebase_id:params[:user][:firebase_id], handle:params[:user][:handle], email:params[:user][:email], avatar:params[:user][:avatar])
		else
			user = User.create(user_params)
		end
		session[:user_id] = user.id
		render json: { success: true }
	end

	def index
	end

	def show
	end
end