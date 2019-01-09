class Course < ApplicationRecord
       has_many :students
       
        @courses = Course.all
   
end
