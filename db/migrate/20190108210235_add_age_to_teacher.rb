class AddAgeToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :age, :integer
  end
end
