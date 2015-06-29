class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :address
      t.string :name
      t.string :telepon

      t.timestamps null: false
    end
  end
end
