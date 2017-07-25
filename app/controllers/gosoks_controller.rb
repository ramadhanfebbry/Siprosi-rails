class GosoksController < ApplicationController
  before_action :set_gosok, only: [:show, :edit, :update, :destroy]

  # GET /gosoks
  # GET /gosoks.json
  def index
    @gosoks = Gosok.all
  end

  # GET /gosoks/1
  # GET /gosoks/1.json
  def show
  end

  # GET /gosoks/new
  def new
    @gosok = Gosok.new
    if(params[:rendam_id])
      @gosok.rendam_id = params[:rendam_id]
      
      @rendam = Rendam.find(params[:rendam_id])
    end
    
  end

  # GET /gosoks/1/edit
  def edit
  end

  # POST /gosoks
  # POST /gosoks.json
  def create
    @gosok = Gosok.new(gosok_params)

    respond_to do |format|
      if @gosok.save
        format.html { redirect_to gosoks_url, notice: 'Gosok was successfully created.' }
        format.json { render :show, status: :created, location: @gosok }
      else
        format.html { render :new }
        format.json { render json: @gosok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gosoks/1
  # PATCH/PUT /gosoks/1.json
  def update
    respond_to do |format|
      if @gosok.update(gosok_params)
        format.html { redirect_to gosoks_url, notice: 'Gosok was successfully updated.' }
        format.json { render :show, status: :ok, location: @gosok }
      else
        format.html { render :edit }
        format.json { render json: @gosok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gosoks/1
  # DELETE /gosoks/1.json
  def destroy
    @gosok.destroy
    respond_to do |format|
      format.html { redirect_to gosoks_url, notice: 'Gosok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gosok
      @gosok = Gosok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gosok_params
      params.require(:gosok).permit(:rendam_id , :hasil, :rusak, :keterangan)
    end
end
