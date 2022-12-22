class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def new
      @user = User.new
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def create
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html {redirect_to users_url}
        end
      end
    end
  
    def update
      @user = User.find(params[:id])
      respond_to do |format|
        if @user.update(user_params)
          format.html {redirect_to users_url}
        end
      end    
    end
  
    def destroy
      @user = User.find(params[:id])
      if @user.destroy
        respond_to do |format|
          format.html {redirect_to users_url}
        end
      end
    end
    private
    def user_params
    
    params.require(:user).permit(:first_name)
    end

end
