class NldsDetailsController < ApplicationController
  before_action :set_nlds_detail, only: [:show, :edit, :update, :destroy]

  # GET /nlds_details
  # GET /nlds_details.json
  def index
    @nlds_details = NldsDetail.all
  end

  # GET /nlds_details/1
  # GET /nlds_details/1.json
  def show
  end

  # GET /nlds_details/new
  def new
    @nlds_detail = NldsDetail.new
  end

  # GET /nlds_details/1/edit
  def edit
  end

  # POST /nlds_details
  # POST /nlds_details.json
  def create
    @nlds_detail = NldsDetail.new(nlds_detail_params)

    respond_to do |format|
      if @nlds_detail.save
        format.html { redirect_to @nlds_detail, notice: 'Nlds detail was successfully created.' }
        format.json { render :show, status: :created, location: @nlds_detail }
      else
        format.html { render :new }
        format.json { render json: @nlds_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nlds_details/1
  # PATCH/PUT /nlds_details/1.json
  def update
    respond_to do |format|
      if @nlds_detail.update(nlds_detail_params)
        format.html { redirect_to @nlds_detail, notice: 'Nlds detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @nlds_detail }
      else
        format.html { render :edit }
        format.json { render json: @nlds_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nlds_details/1
  # DELETE /nlds_details/1.json
  def destroy
    @nlds_detail.destroy
    respond_to do |format|
      format.html { redirect_to nlds_details_url, notice: 'Nlds detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nlds_detail
      @nlds_detail = NldsDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nlds_detail_params
      params.require(:nlds_detail).permit(:nld, :nld_name)
    end
end
