Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'home#home'
  get '/dashboard' => 'dashboard#dashboard'
  get '/login' => 'login#login'
  get '/signup' => 'signup#signup'
  # get '/courses' => 'courses#courses'
  get '/teachers' => 'teachers#teachers'
  get '/students' => 'students#students'
  get '/about' => 'about#about'
  get '/contact' => 'contact#contact'
  
 
  get '/course/:id' => 'courses#destroy'
  get '/student/:id' => 'student#destroy'
  get '/teacher/:id' => 'teacher#destroy'

  root 'home#home'
  resources :dashboard
  resources :students
  resources :courses 
  resources :teachers
  
end






