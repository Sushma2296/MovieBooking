class ShowsController < ApplicationController
  def index
    @theatre = Theatre.find(params[:theatre_id])
    @screens = @theatre.screens
  end

  def show
    @theatre = Theatre.find(params[:theatre_id])
    @show = Show.find(params[:id])
  end
end
