class CatBloksController < ApplicationController
  before_action :set_cat_blok, only: [:show, :edit, :update, :destroy]

  # GET /cat_bloks
  # GET /cat_bloks.json
  def index
    @cat_bloks = CatBlok.all
  end

  # GET /cat_bloks/1
  # GET /cat_bloks/1.json
  def show
  end

  # GET /cat_bloks/new
  def new
    @cat_blok = CatBlok.new
  end

  # GET /cat_bloks/1/edit
  def edit
  end

  # POST /cat_bloks
  # POST /cat_bloks.json
  def create
    @cat_blok = CatBlok.new(cat_blok_params)

    respond_to do |format|
      if @cat_blok.save
        format.html { redirect_to cat_bloks_url, notice: 'Cat blok was successfully created.' }
        format.json { render :show, status: :created, location: @cat_blok }
      else
        format.html { render :new }
        format.json { render json: @cat_blok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_bloks/1
  # PATCH/PUT /cat_bloks/1.json
  def update
    respond_to do |format|
      if @cat_blok.update(cat_blok_params)
        format.html { redirect_to cat_bloks_url, notice: 'Cat blok was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_blok }
      else
        format.html { render :edit }
        format.json { render json: @cat_blok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_bloks/1
  # DELETE /cat_bloks/1.json
  def destroy
    @cat_blok.destroy
    respond_to do |format|
      format.html { redirect_to cat_bloks_url, notice: 'Cat blok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_blok
      @cat_blok = CatBlok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_blok_params
      params.require(:cat_blok).permit(:cetak_blok_id , :hasil, :rusak, :keterangan)
    end
end
