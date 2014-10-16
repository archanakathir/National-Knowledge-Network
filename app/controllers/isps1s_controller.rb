class Isps1sController < ApplicationController
  before_action :set_isps1, only: [:show, :edit, :update, :destroy]

  # GET /isps1s
  # GET /isps1s.json
  def index
    @isps1s = Isps1.all
  end

  # GET /isps1s/1
  # GET /isps1s/1.json
  def show
  end

  # GET /isps1s/new
  def new
    @isps1 = Isps1.new
  end

  # GET /isps1s/1/edit
  def edit
  end

  # POST /isps1s
  # POST /isps1s.json
  def create
    @isps1 = Isps1.new(isps1_params)

    respond_to do |format|
      if @isps1.save
        format.html { redirect_to @isps1, notice: 'Isps1 was successfully created.' }
        format.json { render :show, status: :created, location: @isps1 }
      else
        format.html { render :new }
        format.json { render json: @isps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isps1s/1
  # PATCH/PUT /isps1s/1.json
  def update
    respond_to do |format|
      if @isps1.update(isps1_params)
        format.html { redirect_to @isps1, notice: 'Isps1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @isps1 }
      else
        format.html { render :edit }
        format.json { render json: @isps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isps1s/1
  # DELETE /isps1s/1.json
  def destroy
    @isps1.destroy
    respond_to do |format|
      format.html { redirect_to isps1s_url, notice: 'Isps1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_isps1
      @isps1 = Isps1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def isps1_params
      params.require(:isps1).permit(:isp_id, :isp_name)
    end
end
