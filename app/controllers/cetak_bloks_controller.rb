class CetakBloksController < ApplicationController
  before_action :set_cetak_blok, only: [:show, :edit, :update, :destroy]

  # GET /cetak_bloks
  # GET /cetak_bloks.json
  def index
    @cetak_bloks = CetakBlok.all
  end

  # GET /cetak_bloks/1
  # GET /cetak_bloks/1.json
  def show
  end

  # GET /cetak_bloks/new
  def new
    @cetak_blok = CetakBlok.new
  end

  # GET /cetak_bloks/1/edit
  def edit
  end

  # POST /cetak_bloks
  # POST /cetak_bloks.json
  def create
    @cetak_blok = CetakBlok.new(cetak_blok_params)

    respond_to do |format|
      if @cetak_blok.save
        format.html { redirect_to cetak_bloks_url, notice: 'Cetak blok was successfully created.' }
        format.json { render :show, status: :created, location: @cetak_blok }
      else
        format.html { render :new }
        format.json { render json: @cetak_blok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cetak_bloks/1
  # PATCH/PUT /cetak_bloks/1.json
  def update
    respond_to do |format|
      if @cetak_blok.update(cetak_blok_params)
        format.html { redirect_to cetak_bloks_url, notice: 'Cetak blok was successfully updated.' }
        format.json { render :show, status: :ok, location: @cetak_blok }
      else
        format.html { render :edit }
        format.json { render json: @cetak_blok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cetak_bloks/1
  # DELETE /cetak_bloks/1.json
  def destroy
    @cetak_blok.destroy
    respond_to do |format|
      format.html { redirect_to cetak_bloks_url, notice: 'Cetak blok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cetak_blok
      @cetak_blok = CetakBlok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cetak_blok_params
      params.require(:cetak_blok).permit(:ip_id, :date, :hasil, :rusak, :keterangan)
    end
end
