class NlsController < ApplicationController
  before_action :set_nl, only: [:show, :edit, :update, :destroy]

  # GET /nls
  # GET /nls.json
  def index
    @nls = Nl.all
  end

  # GET /nls/1
  # GET /nls/1.json
  def show
  end

  # GET /nls/new
  def new
    @nl = Nl.new
  end

  # GET /nls/1/edit
  def edit
  end

  # POST /nls
  # POST /nls.json
  def create
    @nl = Nl.new(nl_params)

    respond_to do |format|
      if @nl.save
        format.html { redirect_to @nl, notice: 'Nl was successfully created.' }
        format.json { render :show, status: :created, location: @nl }
      else
        format.html { render :new }
        format.json { render json: @nl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nls/1
  # PATCH/PUT /nls/1.json
  def update
    respond_to do |format|
      if @nl.update(nl_params)
        format.html { redirect_to @nl, notice: 'Nl was successfully updated.' }
        format.json { render :show, status: :ok, location: @nl }
      else
        format.html { render :edit }
        format.json { render json: @nl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nls/1
  # DELETE /nls/1.json
  def destroy
    @nl.destroy
    respond_to do |format|
      format.html { redirect_to nls_url, notice: 'Nl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nl
      @nl = Nl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nl_params
      params.require(:nl).permit(:NLD, :Name)
    end
end
