class JourneysController < ApplicationController
  before_action :set_journey, only: %i[ show edit update destroy ]
  #before_action :call_train, only: %i[new edit]
   
  # GET /journeys or /journeys.json
  def index
    @journeys = Journey.search(params[:term])      
  end

  # GET /journeys/1 or /journeys/1.json
  def show
  end

  # GET /journeys/new
  #pulls in train object since cabin references The Trains table - foreign key in journey's table
  def new
    @journey = Journey.new
    @trains = Train.all
  end

  # GET /journeys/1/edit
  #pulls in train object since cabin references The Trains table - foreign key in journey's table
  def edit
    @trains = Train.all
  end

  # POST /journeys or /journeys.json
  def create
    @journey = Journey.new(journey_params)

    respond_to do |format|
      if @journey.save
        format.html { redirect_to @journey, notice: "Journey was successfully created." }
        format.json { render :show, status: :created, location: @journey }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journeys/1 or /journeys/1.json
  def update
    respond_to do |format|
      if @journey.update(journey_params)
        format.html { redirect_to @journey, notice: "Journey was successfully updated." }
        format.json { render :show, status: :ok, location: @journey }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journeys/1 or /journeys/1.json
  def destroy
    @journey.destroy

    respond_to do |format|
      format.html { redirect_to journeys_url, notice: "Journey was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey
      @journey = Journey.find(params[:id])
    end

    def call_train
      @trains = Train.all
    end

    # Only allow a list of trusted parameters through.
    def journey_params
      params.require(:journey).permit(:name, :train_id, :term)
    end
end
