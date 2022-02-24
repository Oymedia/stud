class UsersController < ApplicationController

    def new
        @user = User.new
    end
    
    def edit
        @user = User.find(params[:id])
        
      end

    def create
            @user = User.new(user_params)

        if @user.save
            redirect_to @user, notice: 'Welcome to e-kali blog, you have successfully signuped'
        else
            render :new, status: :unprocessable_entity      
        end
    end

    def update
        @user = User.find(params[:id])
       
        if @user.update(user_params)
           redirect_to @user, notice: 'Your account information was updated successfully'
          else
            render :edit, status: :unprocessable_entity
        end
      end

private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
