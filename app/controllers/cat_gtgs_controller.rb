class CatGtgsController < ApplicationController
  before_action :set_cat_gtg, only: [:show, :edit, :update, :destroy]

  # GET /cat_gtgs
  # GET /cat_gtgs.json
  def index
    @cat_gtgs = CatGtg.all
  end

  # GET /cat_gtgs/1
  # GET /cat_gtgs/1.json
  def show
  end

  # GET /cat_gtgs/new
  def new
    @cat_gtg = CatGtg.new
  end

  # GET /cat_gtgs/1/edit
  def edit
  end

  # POST /cat_gtgs
  # POST /cat_gtgs.json
  def create
    @cat_gtg = CatGtg.new(cat_gtg_params)

    respond_to do |format|
      if @cat_gtg.save
        format.html { redirect_to @cat_gtg, notice: 'Cat gtg was successfully created.' }
        format.json { render :show, status: :created, location: @cat_gtg }
      else
        format.html { render :new }
        format.json { render json: @cat_gtg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_gtgs/1
  # PATCH/PUT /cat_gtgs/1.json
  def update
    respond_to do |format|
      if @cat_gtg.update(cat_gtg_params)
        format.html { redirect_to @cat_gtg, notice: 'Cat gtg was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_gtg }
      else
        format.html { render :edit }
        format.json { render json: @cat_gtg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_gtgs/1
  # DELETE /cat_gtgs/1.json
  def destroy
    @cat_gtg.destroy
    respond_to do |format|
      format.html { redirect_to cat_gtgs_url, notice: 'Cat gtg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_gtg
      @cat_gtg = CatGtg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_gtg_params
      params.require(:cat_gtg).permit(:gosok_id, :date, :hasil, :rusak, :keterangan)
    end
end
