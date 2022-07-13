class BookingAgentController < ApplicationController
  def index
    @journeys = Journey.all
    #create empty arrays, loop through all the journeys/cabins and push the names/cabin attributes into the new array
    @journey_names = []
    @cabins_available = []
    @journeys.each do |journey|
      @journey_names << journey.name
    end

    @cabins = Cabin.group(:train_id).count
    @cabins.each do |group|
      @cabins_available << group[1]
      @cabins_available << group[1]
    end

    puts @cabins_available
    puts @journey_names
  end
end
