class UsersController < Clearance::UsersController
    $Users = User.all 
      
    

        def index
            @newUser= User.new
         
          end

        def create 
            User.create!(user_params)
        
            redirect_to '/dashboard'
        
        end
    
    def new
        User.new(
                username: params[:username],
                email: params[:email],
                password: params[:password]
                )
        end
          
            
        
    
    private
    def user_params 
        params.required(:user).permit( :username, :email, :password)
    end

end