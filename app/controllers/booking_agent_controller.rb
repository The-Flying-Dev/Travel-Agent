class BookingAgentController < ApplicationController
  def index
   
    @journeys = Journey.all
    #create empty arrays, loop through all the journeys/cabins and push the names/cabin attributes into the new array
    @journey_names = []
    @cabins_available = []
    @journeys.each do |journey|
      @journey_names << journey.name
      @journey_cabins = Cabin.where(["train_id = ?", journey.train_id]).count('id')
      @cabins_available << @journey_cabins
    end
    @booking_groups = Booking.all.group('journey_id').count('id')

    #@cabins = Cabin.group(:train_id).count
    #@cabins.each do |group|
    #  @cabins_available << group[1]
    #  @cabins_available << group[1]
    #end
    @bookings = []
    @booking_groups.each do |group|
      @bookings << group[1]
    end
    

    puts @cabins_available
    puts @journey_names
  end
end
