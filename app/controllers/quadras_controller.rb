class QuadrasController < ApplicationController
  before_action :set_quadra, only: [:show, :edit, :update, :destroy]

  # GET /quadras
  # GET /quadras.json
  def index
    @quadras = Quadra.all
  end

  # GET /quadras/1
  # GET /quadras/1.json
  def show
  end

  # GET /quadras/new
  def new
    @quadra = Quadra.new
  end

  # GET /quadras/1/edit
  def edit
  end

  # POST /quadras
  # POST /quadras.json
  def create
    @quadra = Quadra.new(quadra_params)

    respond_to do |format|
      if @quadra.save
        format.html { redirect_to @quadra, notice: 'Quadra was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quadra }
      else
        format.html { render action: 'new' }
        format.json { render json: @quadra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quadras/1
  # PATCH/PUT /quadras/1.json
  def update
    respond_to do |format|
      if @quadra.update(quadra_params)
        format.html { redirect_to @quadra, notice: 'Quadra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quadra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quadras/1
  # DELETE /quadras/1.json
  def destroy
    @quadra.destroy
    respond_to do |format|
      format.html { redirect_to quadras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quadra
      @quadra = Quadra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quadra_params
      params.require(:quadra).permit(:bairro_id, :total_imoveis, :total_c, :total_r, :total_pe, :total_tb, :total_o)
    end
end
