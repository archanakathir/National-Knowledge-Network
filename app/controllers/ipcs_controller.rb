class IpcsController < ApplicationController
  before_action :set_ipc, only: [:show, :edit, :update, :destroy]

  # GET /ipcs
  # GET /ipcs.json
  def index
    @ipcs = Ipc.all
  end

  # GET /ipcs/1
  # GET /ipcs/1.json
  def show
  end

  # GET /ipcs/new
  def new
    @ipc = Ipc.new
  end

  # GET /ipcs/1/edit
  def edit
  end

  # POST /ipcs
  # POST /ipcs.json
  def create
    @ipc = Ipc.new(ipc_params)

    respond_to do |format|
      if @ipc.save
        format.html { redirect_to @ipc, notice: 'Ipc was successfully created.' }
        format.json { render :show, status: :created, location: @ipc }
      else
        format.html { render :new }
        format.json { render json: @ipc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipcs/1
  # PATCH/PUT /ipcs/1.json
  def update
    respond_to do |format|
      if @ipc.update(ipc_params)
        format.html { redirect_to @ipc, notice: 'Ipc was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipc }
      else
        format.html { render :edit }
        format.json { render json: @ipc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipcs/1
  # DELETE /ipcs/1.json
  def destroy
    @ipc.destroy
    respond_to do |format|
      format.html { redirect_to ipcs_url, notice: 'Ipc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipc
      @ipc = Ipc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipc_params
      params.require(:ipc).permit(:LoopBack4_IP, :LoopBack6_IP, :Public_Segment4_ip, :Public_Segment6_ip)
    end
end
