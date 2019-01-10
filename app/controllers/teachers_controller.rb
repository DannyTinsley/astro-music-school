class TeachersController < ApplicationController
    $teachers = Teacher.all 

      
    def index
        @newTeacher= Teacher.new
     
      end

    def create 
        Teacher.create!(allowed_params)
    
        redirect_to '/teachers'
    
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


    private
        def allowed_params 
            params.required(:teacher).permit( :name, :image, :age, :education, :email, :description, :salary)
        end

end
