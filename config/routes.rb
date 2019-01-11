Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
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
  resources :users
  resources :login
end






