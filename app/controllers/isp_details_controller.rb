class IspDetailsController < ApplicationController
  before_action :set_isp_detail, only: [:show, :edit, :update, :destroy]

  # GET /isp_details
  # GET /isp_details.json
  def index
    @isp_details = IspDetail.all
  end

  # GET /isp_details/1
  # GET /isp_details/1.json
  def show
  end

  # GET /isp_details/new
  def new
    @isp_detail = IspDetail.new
  end

  # GET /isp_details/1/edit
  def edit
  end

  # POST /isp_details
  # POST /isp_details.json
  def create
    @isp_detail = IspDetail.new(isp_detail_params)

    respond_to do |format|
      if @isp_detail.save
        format.html { redirect_to @isp_detail, notice: 'Isp detail was successfully created.' }
        format.json { render :show, status: :created, location: @isp_detail }
      else
        format.html { render :new }
        format.json { render json: @isp_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isp_details/1
  # PATCH/PUT /isp_details/1.json
  def update
    respond_to do |format|
      if @isp_detail.update(isp_detail_params)
        format.html { redirect_to @isp_detail, notice: 'Isp detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @isp_detail }
      else
        format.html { render :edit }
        format.json { render json: @isp_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isp_details/1
  # DELETE /isp_details/1.json
  def destroy
    @isp_detail.destroy
    respond_to do |format|
      format.html { redirect_to isp_details_url, notice: 'Isp detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isp_detail
      @isp_detail = IspDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isp_detail_params
      params.require(:isp_detail).permit(:isp_name)
    end
end
