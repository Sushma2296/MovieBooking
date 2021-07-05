class TheatresController < ApplicationController
  def index
    @theatres = Theatre.all
    @cities = City.all
  end

  def new
    @cities = City.all
  end

  def show
    @theatre = Theatre.find(params[:id])
  end

  def search
    @theatre = Theatre.search(params[:search])
    @movies = Movie.search(params[:search])
  end

end
