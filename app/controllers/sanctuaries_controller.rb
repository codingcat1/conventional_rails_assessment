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
      redirect_to sanctuaries_path, notice: "Your Sanctuary has been created!"
    else
      render 'new'
    end
  end

  def update
    @sanctuary = Sanctuary.find(params[:id])
    if @sanctuary.update(sanctuary_params)
      redirect_to sanctuary_path(@sanctuary), notice: "Your Sanctuary has been updated!"
    else
      render 'show'
    end
  end

  def destroy
    @sanctuary = Sanctuary.find(params[:id])
    @sanctuary.delete
    redirect_to sanctuaries_path, notice: "#{@sanctuary.name} has been deleted!"
  end

  private

  def sanctuary_params
    params.require(:sanctuary).permit(:id, :name, :address)
  end
end
