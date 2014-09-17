class SanctuariesController < ApplicationController
  def index
    @sanctuaries = Sanctuary.all
  end
end
