class SignInController <Clearance::UsersController 
    protect_from_forgery with: :null_session
        $Users = User.all 
          

            def index
                    redirect_to '/dashboard'
             
              end
    
            def create 
                
            
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
            params.permit(:username, :email, :password)
        end
    
    end