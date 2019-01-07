class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :session
      t.string :teacher
      t.string :description

      t.timestamps
    end
  end
end
