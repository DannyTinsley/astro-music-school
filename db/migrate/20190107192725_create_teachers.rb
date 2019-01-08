class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
