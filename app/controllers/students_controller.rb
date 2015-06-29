class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
      if @student.save
        redirect_to students_path
      else
        redirect_to new_student_path
      end
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:name, :address, :age, :telepon)
    end
end
