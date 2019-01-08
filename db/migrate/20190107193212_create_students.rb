class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :image
      t.integer :age
      t.string :education
      t.string :email
      t.string :hobbies

      t.timestamps
    end
  end
end
