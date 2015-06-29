class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @homes = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def edit
    @home = Home.find(params[:id])
  end

  def create
    @home = Home.new(home_params)
      if @home.save
        redirect_to homes_path
      else
        redirect_to new_home_path
      end
  end

  def update
    @home = Home.find(params[:id])
    @home.update(home_params)
    redirect_to homes_path
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to homes_path
  end

  private
    def home_params
      params.require(:home).permit(:address, :name, :telepon)
    end
end
