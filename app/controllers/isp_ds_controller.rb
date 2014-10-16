class IspDsController < ApplicationController
  before_action :set_isp_d, only: [:show, :edit, :update, :destroy]

  # GET /isp_ds
  # GET /isp_ds.json
  def index
    @isp_ds = IspD.all
  end

  # GET /isp_ds/1
  # GET /isp_ds/1.json
  def show
  end

  # GET /isp_ds/new
  def new
    @isp_d = IspD.new
  end

  # GET /isp_ds/1/edit
  def edit
  end

  # POST /isp_ds
  # POST /isp_ds.json
  def create
    @isp_d = IspD.new(isp_d_params)

    respond_to do |format|
      if @isp_d.save
        format.html { redirect_to @isp_d, notice: 'Isp d was successfully created.' }
        format.json { render :show, status: :created, location: @isp_d }
      else
        format.html { render :new }
        format.json { render json: @isp_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isp_ds/1
  # PATCH/PUT /isp_ds/1.json
  def update
    respond_to do |format|
      if @isp_d.update(isp_d_params)
        format.html { redirect_to @isp_d, notice: 'Isp d was successfully updated.' }
        format.json { render :show, status: :ok, location: @isp_d }
      else
        format.html { render :edit }
        format.json { render json: @isp_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isp_ds/1
  # DELETE /isp_ds/1.json
  def destroy
    @isp_d.destroy
    respond_to do |format|
      format.html { redirect_to isp_ds_url, notice: 'Isp d was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isp_d
      @isp_d = IspD.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isp_d_params
      params.require(:isp_d).permit(:isp, :isp_name)
    end
end
