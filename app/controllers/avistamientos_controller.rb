class AvistamientosController < ApplicationController
  before_action :set_avistamiento, only: %i[ show edit update destroy ]

  # GET /avistamientos or /avistamientos.json
  def index
    @avistamientos = Avistamiento.all
  end

  # GET /avistamientos/1 or /avistamientos/1.json
  def show
  end

  # GET /avistamientos/new
  def new
    @avistamiento = Avistamiento.new
  end

  # GET /avistamientos/1/edit
  def edit
  end

  # POST /avistamientos or /avistamientos.json
  def create
    @avistamiento = Avistamiento.new(avistamiento_params)

    respond_to do |format|
      if @avistamiento.save
        format.html { redirect_to avistamiento_url(@avistamiento), notice: "Avistamiento was successfully created." }
        format.json { render :show, status: :created, location: @avistamiento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avistamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avistamientos/1 or /avistamientos/1.json
  def update
    respond_to do |format|
      if @avistamiento.update(avistamiento_params)
        format.html { redirect_to avistamiento_url(@avistamiento), notice: "Avistamiento was successfully updated." }
        format.json { render :show, status: :ok, location: @avistamiento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avistamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avistamientos/1 or /avistamientos/1.json
  def destroy
    @avistamiento.destroy

    respond_to do |format|
      format.html { redirect_to avistamientos_url, notice: "Avistamiento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avistamiento
      @avistamiento = Avistamiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avistamiento_params
      params.require(:avistamiento).permit(:nombrecomun, :nombrecientifico, :familia, :especie, :latitud, :longitud, :fecha, :hora, :nombreOrnitologo)
    end
end
