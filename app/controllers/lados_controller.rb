class LadosController < ApplicationController
  before_action :set_lado, only: [:show, :edit, :update, :destroy]

  # GET /lados
  # GET /lados.json
  def index
    @lados = Lado.all
  end

  # GET /lados/1
  # GET /lados/1.json
  def show
  end

  # GET /lados/new
  def new
    @lado = Lado.new
  end

  # GET /lados/1/edit
  def edit
  end

  # POST /lados
  # POST /lados.json
  def create
    @lado = Lado.new(lado_params)

    respond_to do |format|
      if @lado.save
        format.html { redirect_to @lado, notice: 'Lado was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lado }
      else
        format.html { render action: 'new' }
        format.json { render json: @lado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lados/1
  # PATCH/PUT /lados/1.json
  def update
    respond_to do |format|
      if @lado.update(lado_params)
        format.html { redirect_to @lado, notice: 'Lado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lados/1
  # DELETE /lados/1.json
  def destroy
    @lado.destroy
    respond_to do |format|
      format.html { redirect_to lados_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lado
      @lado = Lado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lado_params
      params.require(:lado).permit(:quadra_id, :rua_id, :referencia)
    end
end
