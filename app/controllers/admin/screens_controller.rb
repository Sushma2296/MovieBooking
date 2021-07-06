class Admin::ScreensController < ApplicationController
  before_action :screen_details

  def screen_details
    @ta = TheatreAdmin.where(user: current_user).first
    @theatre = @ta.theatre
    @screens = @theatre.screens
  end

  def index
    if @ta.nil?
      redirect_to theatres_path
    else
      @screen = Screen.new
    end
  end

  def show
    @screens = @theatre.screens
  end

  def edit
    @screen = @th.screens.find(params[:id])
  end

  def update
    @screen = @th.screens.find(params[:id])
    if @screen.update(screen_params)
      redirect_to admin_screens_path
    end
  end

  def create
    @screen = Screen.create(screen_params)
    if @screen.save
      redirect_to admin_screens_path
    else
      flash.now[:messages] = @screen.errors.full_messages[0]
      render :index
    end
  end

  def destroy
    @screen = @theatre.screens.find(params[:id])
    if @screen.destroy
      redirect_to admin_screens_path
    end
  end

  def screen_params
    params.require(:screen).permit(:theatre_id, :name, :seats)
  end
end
