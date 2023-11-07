class SessionsController < ApplicationController

    def new
    end

    def create
      user = User.find_by(email: params[:session][:email].downcase)  
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:notice] = "Logged in successfully"
        redirect_to user
      else
        flash.now[:alert] = "Email and password combination is incorrect"
        render 'new',  status: :unprocessable_entity
      end  
    end

    def destroy
      session[:user_id] = nil
      flash[:notice] = "You are logged out"
      redirect_to root_path
    end
end
