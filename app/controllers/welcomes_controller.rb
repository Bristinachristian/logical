class WelcomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @welcomes = Welcome.all
  end

  def new
    @welcome = Welcome.new
  end
  
  def create
    @welcome = Welcome.new(welcome_params)
    if @welcome.save
      redirect_to welcomes_path
    else
      render :new
    end
  end

  def update
    @welcome = Welcome.find(params[:id])
    @welcome.update(welcome_params)
    redirect_to welcomes_path
  end

  def destroy
    @welcome = Welcome.find(params[:id])
    @welcome.destroy
    redirect_to welcomes_path
  end

  def show
    @welcome = Welcome.find(params[:id])
  end

  def edit
    @welcome = Welcome.find(params[:id])
  end

  private 
  def welcome_params
    params.require(:welcome).permit(:name, :password, :email)
  end
end
