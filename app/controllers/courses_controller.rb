class CoursesController < ApplicationController
    
     $courses = Course.all 
     $newCourse = Course.create!
     
     

     def index
       @newCourse = Course.new
    

     end

     

    def create
        # Course.create(
        #     image: params["image"],
        #     name: params["name"],
        #     session: params["session"],
        #     teacher: params["teacher"],
        #     description: params["description"]
        # )

        Course.create(allowed_params)
        
        redirect_to '/courses'
    
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
        $updateCourse= Course.find(params[:id]).update
     
        if $course.update_attributes(name: params["name"],
            session: params["session"],
            teacher: params["teacher"],
            description: params["description"]
        )
            flash[:notice] = "Update Saved!"
            redirect_to '/courses'
        end

       
    end

    def show
        @course= Course.find(params[:id])
        
    end
    

    def destroy 
        @course= Course.find(params[:id])
        @course.destroy
     
        redirect_to '/courses' 
    end

    private
        def allowed_params 
            params.required(:course).permit(:image, :name, :session, :teacher, :description)
        end


end
