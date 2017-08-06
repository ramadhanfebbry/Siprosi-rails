class PbsController < ApplicationController
  before_action :set_pb, only: [:show, :edit, :update, :destroy]

  # GET /pbs
  # GET /pbs.json
  def index
    @pbs = Pb.all
  end

  # GET /pbs/1
  # GET /pbs/1.json
  def show
  end

  # GET /pbs/new
  def new
    @pb = Pb.new
    if(params[:rp_id])
      @pb.rp_id = params[:rp_id]
      @rp = Rp.find(params[:rp_id])
    end    
  end

  # GET /pbs/1/edit
  def edit
  end

  # POST /pbs
  # POST /pbs.json
  def create
    @pb = Pb.new(pb_params)

    respond_to do |format|
      if @pb.save
        format.html { redirect_to pbs_url, notice: 'Pb was successfully created.' }
        format.json { render :show, status: :created, location: @pb }
      else
        format.html { render :new }
        format.json { render json: @pb.errors, status: :unprocessable_entity }
      end
    end
  end

  def konfirmasi
    pb = Pb.find(params[:pb_id])
    pb.update_attribute(:status, 'Konfirmasi')

    redirect_to pbs_url, notice: 'Pb confirmed.'
  end

  # PATCH/PUT /pbs/1
  # PATCH/PUT /pbs/1.json
  def update
    respond_to do |format|
      if @pb.update(pb_params)
        format.html { redirect_to pbs_url, notice: 'Pb was successfully updated.' }
        format.json { render :show, status: :ok, location: @pb }
      else
        format.html { render :edit }
        format.json { render json: @pb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pbs/1
  # DELETE /pbs/1.json
  def destroy
    @pb.destroy
    respond_to do |format|
      format.html { redirect_to pbs_url, notice: 'Pb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pb
      @pb = Pb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pb_params
      params.require(:pb).permit(:rp_id , :status)
    end
end
