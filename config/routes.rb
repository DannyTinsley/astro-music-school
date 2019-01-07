Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'home#home'
  get '/about' => 'about#about'
  get '/courses' => 'courses#courses'
  get '/teachers' => 'teachers#teachers'
  get '/contact' => 'contact#contact'
  get '/students' => 'students#students'
  get '/login' => 'login#login'
  get '/signup' => 'signup#signup'
  root 'home#home'
  
end


