class ShowsController < ApplicationController
  before_action :theatre_details

  def theatre_details
    @theatre = Theatre.find(params[:theatre_id])
  end

  def index
    @screens = @theatre.screens
  end

  def show
    @show = Show.find(params[:id])
  end
end
