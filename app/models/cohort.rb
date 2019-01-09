class Cohort < ApplicationRecord
    has_and_belongs_to_many :students
    has_and_belongs_to_many :teachers
end
