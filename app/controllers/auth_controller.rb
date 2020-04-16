class AuthController < ApplicationController
    #login, does not change user data
def new
end

def create
    @user = User.find_by(username:params[:auth][:username])
    if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id 
            redirect_to pictures_path
        
    else
        flash[:message] = "Access denied. Wrong username or password. If you are a new user, please set up an account. "
        render :new
    end
end

def destroy
    session.delete :user_id
    redirect_to login_path
end

end