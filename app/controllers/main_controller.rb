class MainController < ApplicationController

    def index
        # the .now method on these ensures one time display in view only (does not persist in cookies)
        # flash.now[:notice] = "Logged in successfully"
        # flash.now[:alert] = "Invalid email or password"

        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
            redirect_to root_path, notice: "Logged out"
        end
    end
end