class CetakGtgsController < ApplicationController
  before_action :set_cetak_gtg, only: [:show, :edit, :update, :destroy]

  # GET /cetak_gtgs
  # GET /cetak_gtgs.json
  def index
    @cetak_gtgs = params[:q] ? CetakGtg.search_for(params[:q]) : CetakGtg.all 
  end

  # GET /cetak_gtgs/1
  # GET /cetak_gtgs/1.json
  def show
  end

  # GET /cetak_gtgs/new
  def new

    @cetak_gtg = CetakGtg.new
    if params[:ip_id]
    @cetak_gtg.ip = Ip.find(params[:ip_id]) 
    plan_date = Date.strptime(@cetak_gtg.ip.pb.rp.plan_date, '%m/%d/%Y')
    if plan_date >= Date.today
      redirect_to :back, notice: "Tambah Cetak Genteng tidak boleh sebelum 'Plan Date'"
    end
    
    end
  end

  # GET /cetak_gtgs/1/edit
  def edit
  end

  # POST /cetak_gtgs
  # POST /cetak_gtgs.json
  def create
    @cetak_gtg = CetakGtg.new(cetak_gtg_params)

    respond_to do |format|
      if @cetak_gtg.save
        format.html { redirect_to cetak_gtgs_url, notice: 'Cetak gtg was successfully created.' }
        format.json { render :show, status: :created, location: @cetak_gtg }
      else
        format.html { render :new }
        format.json { render json: @cetak_gtg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cetak_gtgs/1
  # PATCH/PUT /cetak_gtgs/1.json
  def update
    respond_to do |format|
      if @cetak_gtg.update(cetak_gtg_params)
        format.html { redirect_to cetak_gtgs_url, notice: 'Cetak gtg was successfully updated.' }
        format.json { render :show, status: :ok, location: @cetak_gtg }
      else
        format.html { render :edit }
        format.json { render json: @cetak_gtg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cetak_gtgs/1
  # DELETE /cetak_gtgs/1.json
  def destroy
    @cetak_gtg.destroy
    respond_to do |format|
      format.html { redirect_to cetak_gtgs_url, notice: 'Cetak gtg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cetak_gtg
      @cetak_gtg = CetakGtg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cetak_gtg_params
      params.require(:cetak_gtg).permit(:ip_id , :hasil, :rusak, :keterangan)
    end
end
