class IspsDetailsController < ApplicationController
  before_action :set_isps_detail, only: [:show, :edit, :update, :destroy]

  # GET /isps_details
  # GET /isps_details.json
  def index
    @isps_details = IspsDetail.all
  end

  # GET /isps_details/1
  # GET /isps_details/1.json
  def show
  end

  # GET /isps_details/new
  def new
    @isps_detail = IspsDetail.new
  end

  # GET /isps_details/1/edit
  def edit
  end

  # POST /isps_details
  # POST /isps_details.json
  def create
    @isps_detail = IspsDetail.new(isps_detail_params)

    respond_to do |format|
      if @isps_detail.save
        format.html { redirect_to @isps_detail, notice: 'Isps detail was successfully created.' }
        format.json { render :show, status: :created, location: @isps_detail }
      else
        format.html { render :new }
        format.json { render json: @isps_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isps_details/1
  # PATCH/PUT /isps_details/1.json
  def update
    respond_to do |format|
      if @isps_detail.update(isps_detail_params)
        format.html { redirect_to @isps_detail, notice: 'Isps detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @isps_detail }
      else
        format.html { render :edit }
        format.json { render json: @isps_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isps_details/1
  # DELETE /isps_details/1.json
  def destroy
    @isps_detail.destroy
    respond_to do |format|
      format.html { redirect_to isps_details_url, notice: 'Isps detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isps_detail
      @isps_detail = IspsDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isps_detail_params
      params.require(:isps_detail).permit(:isp, :isp_name, :ckt)
    end
end
