class SanctuariesController < ApplicationController
  def index
    @sanctuaries = Sanctuary.all
  end

  def show
    @sanctuary = Sanctuary.find(params[:id])
  end

end
