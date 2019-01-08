class CoursesController < ApplicationController
    
     $courses = Course.all 

     
    
    
     
    
    def create
        Course.new(
            name: params["name"],
            session: params["session"],
            teacher: params["teacher"],
            description: params["description"]
        )
    
      end

    

    def edit
    Course.find(params[:id])
    end

    def destroy 
        Course.find(params[:id])
        Course.destroy
    end

end
