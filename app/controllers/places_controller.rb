class PlacesController < ApplicationController
  include ApplicationHelper
  before_action :authenticate_user!, except: [:index]
  include Wicked::Wizard
  steps :purpose, :location, :ages, :result, :place_card

  def index
    @places = Place.all
  end

  def show
    case step
      when :purpose
        @type = params[:place_type]
        all_ops = operations
        @type = all_ops.select {|op| op[:name].parameterize == params[:place_type]}.first

      when :result
        @places = Place.filtered(params).order("current_rating DESC", "updated_at DESC").limit(3)
      
      when :place_card
        @place = Place.find_by(name: params[:name])
      end
    render_wizard    
  end

  def new
    @place = Place.new
  end

  def edit
    @place = Place.find_by(id: params[:id])
  end

  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to root_path, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to root_path, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:name, :address, :phone, :kind, :current_rating, :purpose, :location, :age_range, :place_type, :latitude, :longitude)
    end
end
