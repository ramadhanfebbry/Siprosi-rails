class RendamsController < ApplicationController
  before_action :set_rendam, only: [:show, :edit, :update, :destroy]

  # GET /rendams
  # GET /rendams.json
  def index
    @rendams = params[:q] ? Rendam.search_for(params[:q]) : Rendam.all
  end

  # GET /rendams/1
  # GET /rendams/1.json
  def show
  end

  # GET /rendams/new
  def new
    @rendam = Rendam.new
    @rendam.cetak_gtg_id = params[:cetak_gtg_id]
  end

  # GET /rendams/1/edit
  def edit
  end

  # POST /rendams
  # POST /rendams.json
  def create
    @rendam = Rendam.new(rendam_params)

    respond_to do |format|
      if @rendam.save
        format.html { redirect_to rendams_url, notice: 'Rendam was successfully created.' }
        format.json { render :show, status: :created, location: @rendam }
      else
        format.html { render :new }
        format.json { render json: @rendam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rendams/1
  # PATCH/PUT /rendams/1.json
  def update
    respond_to do |format|
      if @rendam.update(rendam_params)
        format.html { redirect_to rendams_url, notice: 'Rendam was successfully updated.' }
        format.json { render :show, status: :ok, location: @rendam }
      else
        format.html { render :edit }
        format.json { render json: @rendam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rendams/1
  # DELETE /rendams/1.json
  def destroy
    @rendam.destroy
    respond_to do |format|
      format.html { redirect_to rendams_url, notice: 'Rendam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rendam
      @rendam = Rendam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rendam_params
      params.require(:rendam).permit(:cetak_gtg_id , :hasil, :rusak, :keterangan)
    end
end
