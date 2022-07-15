class CreditCardsController < ApplicationController
  before_action :set_credit_card, only: %i[ show edit update destroy ]
  rescue_from ActiveRecord::RecordNotFound,with: :redirect_if_not_found

  # GET /credit_cards or /credit_cards.json
  def index
    @credit_cards = CreditCard.all
  end

  # GET /credit_cards/1 or /credit_cards/1.json
  def show
  end

  # GET /credit_cards/new
  #pulls in customer object since address references The customers table - foreign key in CreditCard table
  def new
    #finding customer based on id
    @customer = Customer.find(params[:customer_id])
    @credit_card = CreditCard.new
    @credit_card.customer_id = @customer.id
  end

  # GET /credit_cards/1/edit
  #pulls in customer object since address references The customers table - foreign key in CreditCard table
  def edit
    @customers = Customer.all
  end

  # POST /credit_cards or /credit_cards.json
  def create
    @credit_card = CreditCard.new(credit_card_params)
    @credit_card.exp_date = params[:exp_date][:year].to_s + "/" + params[:exp_date][:month].to_s

    respond_to do |format|
      if @credit_card.save
        @customer = Customer.find(@credit_card.customer_id)
        format.html { redirect_to @customer, notice: "Credit card was successfully created." }
        format.json { render :show, status: :created, location: @credit_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @credit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_cards/1 or /credit_cards/1.json
  def update
    @credit_card.exp_date = params[:exp_date][:year].to_s + "/" + params[:exp_date][:month].to_s
    respond_to do |format|
      if @credit_card.update(credit_card_params)
        format.html { redirect_to credit_card_url(@credit_card), notice: "Credit card was successfully updated." }
        format.json { render :show, status: :ok, location: @credit_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @credit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_cards/1 or /credit_cards/1.json
  def destroy
    @credit_card.destroy

    respond_to do |format|
      format.html { redirect_to credit_cards_url, notice: "Credit card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card
      @credit_card = CreditCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def credit_card_params
      params.require(:credit_card).permit(:number, :exp_date, :name_on_card, :company, :customer_id)
    end
end
