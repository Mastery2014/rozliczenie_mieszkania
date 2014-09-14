class OlbigationsController < ApplicationController
  before_action :set_olbigation, only: [:show, :edit, :update, :destroy]

  # GET /olbigations
  # GET /olbigations.json
  def index
    @olbigations = Olbigation.all
  end

  # GET /olbigations/1
  # GET /olbigations/1.json
  def show
  end

  # GET /olbigations/new
  def new
    @olbigation = Olbigation.new
  end

  # GET /olbigations/1/edit
  def edit
  end

  # POST /olbigations
  # POST /olbigations.json
  def create
    @olbigation = Olbigation.new(olbigation_params)

    respond_to do |format|
      if @olbigation.save
        format.html { redirect_to @olbigation, notice: 'Olbigation was successfully created.' }
        format.json { render :show, status: :created, location: @olbigation }
      else
        format.html { render :new }
        format.json { render json: @olbigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /olbigations/1
  # PATCH/PUT /olbigations/1.json
  def update
    respond_to do |format|
      if @olbigation.update(olbigation_params)
        format.html { redirect_to @olbigation, notice: 'Olbigation was successfully updated.' }
        format.json { render :show, status: :ok, location: @olbigation }
      else
        format.html { render :edit }
        format.json { render json: @olbigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /olbigations/1
  # DELETE /olbigations/1.json
  def destroy
    @olbigation.destroy
    respond_to do |format|
      format.html { redirect_to olbigations_url, notice: 'Olbigation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_olbigation
      @olbigation = Olbigation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def olbigation_params
      params.require(:olbigation).permit(:date, :description, :client_id, :cold_water, :cold_water_price, :cental_heating, :central_heating_price, :hot_water, :hot_water_price, :electricity, :electricity_price, :other_price)
    end
end
