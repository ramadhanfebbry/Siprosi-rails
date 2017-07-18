class RpsController < ApplicationController
  before_action :set_rp, only: [:show, :edit, :update, :destroy]

  # GET /rps
  # GET /rps.json
  def index
    @rps = Rp.all
  end

  # GET /rps/1
  # GET /rps/1.json
  def show
  end

  # GET /rps/new
  def new
    @rp = Rp.new
  end

  # GET /rps/1/edit
  def edit
  end

  # POST /rps
  # POST /rps.json
  def create
    @rp = Rp.new(rp_params)

    respond_to do |format|
      if @rp.save
        format.html { redirect_to rps_url, notice: 'Rp was successfully created.' }
        format.json { render :show, status: :created, location: @rp }
      else
        format.html { render :new }
        format.json { render json: @rp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rps/1
  # PATCH/PUT /rps/1.json
  def update
    respond_to do |format|
      if @rp.update(rp_params)
        format.html { redirect_to rps_url, notice: 'Rp was successfully updated.' }
        format.json { render :show, status: :ok, location: @rp }
      else
        format.html { render :edit }
        format.json { render json: @rp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rps/1
  # DELETE /rps/1.json
  def destroy
    @rp.destroy
    respond_to do |format|
      format.html { redirect_to rps_url, notice: 'Rp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rp
      @rp = Rp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rp_params
      params.require(:rp).permit(:schedule_qty, :item_name, :site, :date, :keterangan, :plan_date, :barang_id)
    end
end
