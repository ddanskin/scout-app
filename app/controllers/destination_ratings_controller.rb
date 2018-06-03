class DestinationRatingsController < ApplicationController
  before_action :set_destination_rating, only: [:show, :edit, :update, :destroy]

  # GET /destination_ratings
  # GET /destination_ratings.json
  def index
    @destination_ratings = DestinationRating.all
  end

  # GET /destination_ratings/1
  # GET /destination_ratings/1.json
  def show
  end

  # GET /destination_ratings/new
  def new
    @destination_rating = DestinationRating.new
  end

  # GET /destination_ratings/1/edit
  def edit
  end

  # POST /destination_ratings
  # POST /destination_ratings.json
  def create
    @destination_rating = DestinationRating.new(destination_rating_params)

    respond_to do |format|
      if @destination_rating.save
        format.html { redirect_to @destination_rating, notice: 'Destination rating was successfully created.' }
        format.json { render :show, status: :created, location: @destination_rating }
      else
        format.html { render :new }
        format.json { render json: @destination_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destination_ratings/1
  # PATCH/PUT /destination_ratings/1.json
  def update
    respond_to do |format|
      if @destination_rating.update(destination_rating_params)
        format.html { redirect_to @destination_rating, notice: 'Destination rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination_rating }
      else
        format.html { render :edit }
        format.json { render json: @destination_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destination_ratings/1
  # DELETE /destination_ratings/1.json
  def destroy
    @destination_rating.destroy
    respond_to do |format|
      format.html { redirect_to destination_ratings_url, notice: 'Destination rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination_rating
      @destination_rating = DestinationRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_rating_params
      params.require(:destination_rating).permit(:user_id, :location_id, :rating)
    end
end
