class BookingsController < ApplicationController
  before_action :seat_booking

  def seat_booking
    @show = Show.find(params[:show_id])
    @booked_seats = []
    @show.bookings.each do |s|
      @booked_seats += s.seat_number.split(",").to_a.map(&:to_i)
    end
  end

  def index
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to theatre_show_booking_path(@booking.show.screen.theatre.id, @booking.show.id, @booking.id)
    else
      flash.now[:messages] = @booking.errors.full_messages[0]
      render :index
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:show_id, :user_id, :seat_number, :isConfirm, :amount)
  end
end
