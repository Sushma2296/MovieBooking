class Admin::ScreensController < ApplicationController
  def index
    @ta = TheatreAdmin.where(user: current_user).first
    if @ta.nil?
      redirect_to theatres_path
    else
      @theatre = @ta.theatre
      @screens = @theatre.screens
      @screen = Screen.new
    end
    @cities = City.all
  end

  def show
    @ta = TheatreAdmin.where(user: current_user).first
    @theatre = @ta.theatre
    @screens = @theatre.screens
  end

  def edit
    @ta = TheatreAdmin.where(user: current_user).first
    @th = @ta.theatre
    @screen = @th.screens.find(params[:id])
  end

  def update
    @ta = TheatreAdmin.where(user: current_user).first
    @th = @ta.theatre
    @screen = @th.screens.find(params[:id])
    if @screen.update(screen_params)
      redirect_to admin_screens_path
    end
  end

  def create
    @screen = Screen.create(screen_params)
    if @screen.save
      redirect_to admin_screens_path
    end
  end

  def destroy
    @ta = TheatreAdmin.where(user: current_user).first
    @theatre = @ta.theatre
    @screen = @theatre.screens.find(params[:id])
    if @screen.destroy
      redirect_to admin_screens_path
    end
  end

  def screen_params
    params.require(:screen).permit(:theatre_id, :name, :seats)
  end
end
