class BienvenidosController < ApplicationController
  before_action :set_bienvenido, only: [:show, :edit, :update, :destroy]

  # GET /bienvenidos
  # GET /bienvenidos.json
  def index
    @bienvenidos = Bienvenido.all
  end

  # GET /bienvenidos/1
  # GET /bienvenidos/1.json
  def show
  end

  # GET /bienvenidos/new
  def new
    @bienvenido = Bienvenido.new
  end

  # GET /bienvenidos/1/edit
  def edit
  end

  # POST /bienvenidos
  # POST /bienvenidos.json
  def create
    @bienvenido = Bienvenido.new(bienvenido_params)

    respond_to do |format|
      if @bienvenido.save
        format.html { redirect_to @bienvenido, notice: 'Bienvenido was successfully created.' }
        format.json { render :show, status: :created, location: @bienvenido }
      else
        format.html { render :new }
        format.json { render json: @bienvenido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bienvenidos/1
  # PATCH/PUT /bienvenidos/1.json
  def update
    respond_to do |format|
      if @bienvenido.update(bienvenido_params)
        format.html { redirect_to @bienvenido, notice: 'Bienvenido was successfully updated.' }
        format.json { render :show, status: :ok, location: @bienvenido }
      else
        format.html { render :edit }
        format.json { render json: @bienvenido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bienvenidos/1
  # DELETE /bienvenidos/1.json
  def destroy
    @bienvenido.destroy
    respond_to do |format|
      format.html { redirect_to bienvenidos_url, notice: 'Bienvenido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bienvenido
      @bienvenido = Bienvenido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bienvenido_params
      params.require(:bienvenido).permit(:name, :usuario)
    end
end
