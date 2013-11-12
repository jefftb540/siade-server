class TratamentosController < ApplicationController
  before_action :set_tratamento, only: [:show, :edit, :update, :destroy]

  # GET /tratamentos
  # GET /tratamentos.json
  def index
    @tratamentos = Tratamento.all
  end

  # GET /tratamentos/1
  # GET /tratamentos/1.json
  def show
  end

  # GET /tratamentos/new
  def new
    @tratamento = Tratamento.new
  end

  # GET /tratamentos/1/edit
  def edit
  end

  # POST /tratamentos
  # POST /tratamentos.json
  def create
    @tratamento = Tratamento.new(tratamento_params)

    respond_to do |format|
      if @tratamento.save
        format.html { redirect_to @tratamento, notice: 'Tratamento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tratamento }
      else
        format.html { render action: 'new' }
        format.json { render json: @tratamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tratamentos/1
  # PATCH/PUT /tratamentos/1.json
  def update
    respond_to do |format|
      if @tratamento.update(tratamento_params)
        format.html { redirect_to @tratamento, notice: 'Tratamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tratamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tratamentos/1
  # DELETE /tratamentos/1.json
  def destroy
    @tratamento.destroy
    respond_to do |format|
      format.html { redirect_to tratamentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tratamento
      @tratamento = Tratamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tratamento_params
      params.require(:tratamento).permit(:eliminados, :imovel_tratado, :tipo_larvicida, :quantidade_larvicida, :quantidade_deposito_tratado)
    end
end
