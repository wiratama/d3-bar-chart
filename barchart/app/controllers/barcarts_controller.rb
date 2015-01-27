class BarcartsController < ApplicationController
  before_action :set_barcart, only: [:show, :edit, :update, :destroy]

  # GET /barcarts
  # GET /barcarts.json
  def index
    @barcarts = Barcart.all
  end

  # GET /barcarts/1
  # GET /barcarts/1.json
  def show
  end

  def dataJson
    @json='[
      {"letter":"A","frequency":0.08167},
      {"letter":"B","frequency":0.01492},
      {"letter":"C","frequency":0.0278},
      {"letter":"D","frequency":0.4253},
      {"letter":"E","frequency":0.12702},
      {"letter":"F","frequency":0.02288},
      {"letter":"G","frequency":0.02022},
      {"letter":"H","frequency":0.06094},
      {"letter":"I","frequency":0.06973},
      {"letter":"J","frequency":0.00153},
      {"letter":"K","frequency":0.00747},
      {"letter":"L","frequency":0.04025},
      {"letter":"M","frequency":0.02517},
      {"letter":"N","frequency":0.06749},
      {"letter":"O","frequency":0.07507},
      {"letter":"P","frequency":0.01929},
      {"letter":"Q","frequency":0.00098},
      {"letter":"R","frequency":0.05987},
      {"letter":"S","frequency":0.06333},
      {"letter":"T","frequency":0.09056},
      {"letter":"U","frequency":0.02758},
      {"letter":"V","frequency":0.01037},
      {"letter":"W","frequency":0.02465},
      {"letter":"X","frequency":0.0015},
      {"letter":"Y","frequency":0.01971},
      {"letter":"Z","frequency":0.00074}
    ]'
    render :json => @json
  end
  def d3
  end

  # GET /barcarts/new
  def new
    @barcart = Barcart.new
  end

  # GET /barcarts/1/edit
  def edit
  end

  # POST /barcarts
  # POST /barcarts.json
  def create
    @barcart = Barcart.new(barcart_params)

    respond_to do |format|
      if @barcart.save
        format.html { redirect_to @barcart, notice: 'Barcart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barcart }
      else
        format.html { render action: 'new' }
        format.json { render json: @barcart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barcarts/1
  # PATCH/PUT /barcarts/1.json
  def update
    respond_to do |format|
      if @barcart.update(barcart_params)
        format.html { redirect_to @barcart, notice: 'Barcart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barcart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barcarts/1
  # DELETE /barcarts/1.json
  def destroy
    @barcart.destroy
    respond_to do |format|
      format.html { redirect_to barcarts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barcart
      @barcart = Barcart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barcart_params
      params[:barcart]
    end
end
