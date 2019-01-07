class StudentsController < ApplicationController
    def create 
        Student.new(
            name: params["name"],
            email: params["email"],
            password: params["password"]
         )
    end
def new
    @newStudent= Student.new(
        name: params["name"],
        email: params["email"],
        password: params["password"]
     )

    redirect_to '/dashboard'
end
end
