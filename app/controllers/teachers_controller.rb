class TeachersController < ApplicationController

    def create 
        Teacher.new(
            name: params["name"],
            email: params["email"],
            password: params["password"]
            description: params["description"]
         )
    end
def new
    Teacher.new(
        name: params["name"],
        email: params["email"],
        password: params["password"]
        description: params["description"]
     )

    
end
end
