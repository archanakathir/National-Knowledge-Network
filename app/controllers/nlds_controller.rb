class NldsController < ApplicationController
  before_action :set_nld, only: [:show, :edit, :update, :destroy]

  # GET /nlds
  # GET /nlds.json
  def index
    @nlds = Nld.all
  end

  # GET /nlds/1
  # GET /nlds/1.json
  def show
  end

  # GET /nlds/new
  def new
    @nld = Nld.new
  end

  # GET /nlds/1/edit
  def edit
  end

  # POST /nlds
  # POST /nlds.json
  def create
    @nld = Nld.new(nld_params)

    respond_to do |format|
      if @nld.save
        format.html { redirect_to @nld, notice: 'Nld was successfully created.' }
        format.json { render :show, status: :created, location: @nld }
      else
        format.html { render :new }
        format.json { render json: @nld.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nlds/1
  # PATCH/PUT /nlds/1.json
  def update
    respond_to do |format|
      if @nld.update(nld_params)
        format.html { redirect_to @nld, notice: 'Nld was successfully updated.' }
        format.json { render :show, status: :ok, location: @nld }
      else
        format.html { render :edit }
        format.json { render json: @nld.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nlds/1
  # DELETE /nlds/1.json
  def destroy
    @nld.destroy
    respond_to do |format|
      format.html { redirect_to nlds_url, notice: 'Nld was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nld
      @nld = Nld.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nld_params
      params.require(:nld).permit(:NLD, :Name)
    end
end
