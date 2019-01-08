class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age 
      t.string :image
      t.string :email
      t.integer :salary
      t.string :education
      t.string :description

      t.timestamps
    end
  end
end
