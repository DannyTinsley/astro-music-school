class DashboardController < ApplicationController
    def create 
        User.create(
            username: params["username"],
            email: params["email"],
            password: params["password"]
         )

        redirect_to '/dashboard'
 
    end
end
