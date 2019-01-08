class TeachersController < ApplicationController
    $teachers = Teacher.all 
    
    def create 
        Teacher.new(
            name: params["name"],
            age: params["age"],
            image: params["image"],
            email: params["email"],
            salary: params["salary"],
            education: params["education"],
            description: params["description"]
            )
         
    end

def new
    Teacher.new(
            name: params["name"],
            age: params["age"],
            image: params["image"],
            email: params["email"],
            salary: params["salary"],
            education: params["education"],
            description: params["description"]
            )
    end
      
        
    

    def edit
    Teacher.find(params[:id])
    end


    def destroy 
        Teacher.find(params[:id])
        Teacher.destroy
    end

end
