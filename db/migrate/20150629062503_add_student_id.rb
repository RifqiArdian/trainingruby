class AddStudentId < ActiveRecord::Migration
  def change
    add_column :schools, :student_id, :integer
    add_column :homes, :student_id, :integer
  end
end
