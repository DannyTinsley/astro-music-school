class HomeController < ApplicationController
    def home
        if current_user
            redirect_to '/dashboard'
end

def about
end

def courses
end

def teachers
end

def students
end

def contact
end

end