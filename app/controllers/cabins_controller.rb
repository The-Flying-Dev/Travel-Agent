class CabinsController < ApplicationController
  before_action :set_cabin, only: %i[ show edit update destroy ]

  # GET /cabins or /cabins.json
  def index
    @cabins = Cabin.all
  end

  # GET /cabins/1 or /cabins/1.json
  def show
  end

  # GET /cabins/new
  #pulls in train object since cabin references The Trains table - foreign key in cabins table
  def new
    @cabin = Cabin.new
    @trains = Train.all     
  end

  # GET /cabins/1/edit
  #pulls in train object since cabin references The Trains table - foreign key in cabins table
  def edit
    @trains = Train.all   
  end

  # POST /cabins or /cabins.json
  def create
    @cabin = Cabin.new(cabin_params)

    respond_to do |format|
      if @cabin.save
        format.html { redirect_to @cabin, notice: "Cabin was successfully created." }
        format.json { render :show, status: :created, location: @cabin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cabin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabins/1 or /cabins/1.json
  def update
    respond_to do |format|
      if @cabin.update(cabin_params)
        format.html { redirect_to @cabin, notice: "Cabin was successfully updated." }
        format.json { render :show, status: :ok, location: @cabin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cabin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabins/1 or /cabins/1.json
  def destroy
    @cabin.destroy

    respond_to do |format|
      format.html { redirect_to cabins_url, notice: "Cabin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabin
      @cabin = Cabin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cabin_params
      params.require(:cabin).permit(:name, :beds, :section, :train_id)
    end
end
