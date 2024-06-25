class TravelsController < ApplicationController
  def index
    @travels = Travel.all
  end

  def show
    @travel = Travel.find(params[:id])
  end
end
