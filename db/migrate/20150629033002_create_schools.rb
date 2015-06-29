class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :address
      t.string :telepon
      t.string :name
      t.string :kepalasekolah

      t.timestamps null: false
    end
  end
end
