class MainController < ApplicationController

    def index
        # the .now method on these ensures one time display in view only (does not persist in cookies)
        # flash.now[:notice] = "Logged in successfully"
        # flash.now[:alert] = "Invalid email or password"

        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end
end