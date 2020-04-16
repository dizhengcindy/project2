class UsersController < ApplicationController
before_action :redirect_user, only: [:show,:edit,:update,:destroy]
before_action :set_user, only: [:show,:edit,:update,:destroy]
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to pictures_path
      else
        flash[:error_message_for_user] = @user.errors.full_messages
        render :new
      end
    end

    def show
      
    end

    def edit
      if @user != current_user
        redirect_to pictures_path
      end
    end

    def update
      if @user.update(username:user_params[:username],email:user_params[:email])
        redirect_to pictures_path
      else
        render :edit
      end
    end

    def destroy
      session.delete :user_id
      @user.destroy
      redirect_to login_path
    end

    private
    def set_user
      @user=User.find(params[:id])
    end
    def user_params
        params.require(:user).permit(:username,:email,:password,:password_confirmation)
    end    
end
