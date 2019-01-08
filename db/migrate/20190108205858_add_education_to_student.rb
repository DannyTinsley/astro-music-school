class AddEducationToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :education, :string
  end
end
