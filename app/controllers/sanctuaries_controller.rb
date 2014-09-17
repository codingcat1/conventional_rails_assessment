class SanctuariesController < ApplicationController
  def index
    @sanctuaries = Sanctuary.all
  end

  def show
    @sanctuary = Sanctuary.find(params[:id])
  end

  def new
    @sanctuary = Sanctuary.new
  end

  def create
    @sanctuary = Sanctuary.create(sanctuary_params)
    if @sanctuary.save
      redirect_to sanctuaries_path
    else
      render 'new'
    end
  end

  def edit
    @sanctuary = Sanctuary.find(params[:id])
  end

  private

  def sanctuary_params
    params.require(:sanctuary).permit(:id, :name, :address)
  end
end
