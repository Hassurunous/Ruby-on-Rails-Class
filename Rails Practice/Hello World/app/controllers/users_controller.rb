class UsersController < ApplicationController
    def user
    end

    def index
    end

    def show
        user_id = params[:id]
        @user = Users.find(user.id)
    end

end
