class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.string :telepon

      t.timestamps null: false
    end
  end
end
