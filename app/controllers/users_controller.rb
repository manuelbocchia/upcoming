class UsersController < ActionController::Base

    def index

    end

    def show
        @user = User.find(id)
    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

end
