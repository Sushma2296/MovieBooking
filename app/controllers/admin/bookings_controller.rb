class Admin::BookingsController < ApplicationController
  def index
    @ta = TheatreAdmin.where(user: current_user).first
    @theatre = @ta.theatre
    @screens = @theatre.screens
  end
end
