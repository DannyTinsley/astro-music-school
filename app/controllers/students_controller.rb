class StudentsController < ApplicationController
    
        $students = Student.all 
        
        def create 
            Student.new(
                name: params["name"],
                image: params["image"],
                age: params["age"],
                education: params["education"],
                email: params["email"],
                hobbies: params["hobbies"]
                )
             
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
    
    end


