class SchoolsController < ApplicationController
  before_action :authenticate_user!
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def edit
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(school_params)
      if @school.save
        redirect_to schools_path
      else
        redirect_to new_school_path
      end
  end

  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to schools_path
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_path
  end

  private
    def school_params
      params.require(:school).permit(:address, :telepon, :name, :kepalasekolah)
    end
  end