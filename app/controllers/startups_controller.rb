class StartupsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_startup, only: [:show, :edit, :update, :destroy]
  

  def index
    @startups = Startup.all
  end

  def show  

  end

  def new
    @startup = Startup.new
  end

  def edit
  end

  def create
    @startup = Startup.new(startup_params)
    if @startup.save
      redirect_to @startup, notice: 'Startup was successfully collected.'
    else
      render action: 'new'
    end
  end

  def update
    if @startup.update(startup_params)
      redirect_to @startup, notice: 'Startup was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @startup.destroy
    redirect_to startups_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.require(:startup).permit(:name, :URl, :description)
    end
end