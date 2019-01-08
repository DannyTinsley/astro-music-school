class AddSalaryToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :salary, :string
  end
end
