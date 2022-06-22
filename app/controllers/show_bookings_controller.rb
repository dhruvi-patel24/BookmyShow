class ShowBookingsController < ApplicationController
  def index
    @bookings = ShowBooking.all
  end

  def new
    @user = User.find(params[:user_id])
    @booking = @user.show_bookings.new
  end

  def create
    
    @user = User.find(params[:user_id])
    @booking  = @user.show_bookings.new(book_params)
    if  @booking.save
      redirect_to user_show_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def show
    @booking = ShowBooking.find(params[:format])
  end

  def destroy
  end

  private
  def book_params
    params.require(:show_booking).permit(:status, :event_id, :user_id, :capacity, :reason)
  end
end
