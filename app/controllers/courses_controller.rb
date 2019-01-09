class CoursesController < ApplicationController
    
     $courses = Course.all 
     

     def index
        $locations = Location.paginate(page: params[:page], per_page: 10) 
        respond_to do |format|
          format.html
          format.json { render json: @locations }
        end 
      end 

    def create
        Course.new(
            image: params["image"],
            name: params["name"],
            session: params["session"],
            teacher: params["teacher"],
            description: params["description"]
        )
    
      end

      def new
        Course.new(
            image: params["image"],
            name: params["name"],
            session: params["session"],
            teacher: params["teacher"],
            description: params["description"]
        )
    
      end

    def edit
    Course.find(params[:id])
    end

    def update
        $course= Course.find(params[:id])
     
        if $course.update_attributes(name: params["name"],
            session: params["session"],
            teacher: params["teacher"],
            description: params["description"]
        )
            flash[:notice] = "Update Saved!"
            redirect_to '/courses'
        end

       
    end


    def destroy 
        Course.find(params[:id])
        Course.destroy
    end

end
