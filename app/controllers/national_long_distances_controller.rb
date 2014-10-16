class NationalLongDistancesController < ApplicationController
  before_action :set_national_long_distance, only: [:show, :edit, :update, :destroy]

  # GET /national_long_distances
  # GET /national_long_distances.json
  def index
    @national_long_distances = NationalLongDistance.all
  end

  # GET /national_long_distances/1
  # GET /national_long_distances/1.json
  def show
  end

  # GET /national_long_distances/new
  def new
    @national_long_distance = NationalLongDistance.new
  end

  # GET /national_long_distances/1/edit
  def edit
  end

  # POST /national_long_distances
  # POST /national_long_distances.json
  def create
    @national_long_distance = NationalLongDistance.new(national_long_distance_params)

    respond_to do |format|
      if @national_long_distance.save
        format.html { redirect_to @national_long_distance, notice: 'National long distance was successfully created.' }
        format.json { render :show, status: :created, location: @national_long_distance }
      else
        format.html { render :new }
        format.json { render json: @national_long_distance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /national_long_distances/1
  # PATCH/PUT /national_long_distances/1.json
  def update
    respond_to do |format|
      if @national_long_distance.update(national_long_distance_params)
        format.html { redirect_to @national_long_distance, notice: 'National long distance was successfully updated.' }
        format.json { render :show, status: :ok, location: @national_long_distance }
      else
        format.html { render :edit }
        format.json { render json: @national_long_distance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /national_long_distances/1
  # DELETE /national_long_distances/1.json
  def destroy
    @national_long_distance.destroy
    respond_to do |format|
      format.html { redirect_to national_long_distances_url, notice: 'National long distance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_national_long_distance
      @national_long_distance = NationalLongDistance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def national_long_distance_params
      params.require(:national_long_distance).permit(:nld_name)
    end
end
