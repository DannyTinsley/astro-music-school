class StudentsController < ApplicationController
    
        $students = Student.all 
      

        def index
            @newStudent= Student.new
         
          end

        def create 
            Student.create!(allowed_params)
        
            redirect_to '/students'
        
        end
    
    def new
        Student.new(
                name: params["name"],
                image: params["image"],
                age: params["age"],
                education: params["education"],
                email: params["email"],
                hobbies: params["hobbies"]
                )
        end
          
            
        
    
        def edit
        Student.find(params[:id])
        end
        
    
        def destroy 
            Student.find(params[:id])
            Student.destroy
        end
    
        private
        def allowed_params 
            params.required(:student).permit( :name, :image, :age, :education, :email, :hobbies)
        end

    end


