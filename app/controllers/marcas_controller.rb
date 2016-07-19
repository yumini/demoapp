class MarcasController < ApplicationController
  before_action :set_marca,:check_admin_logged_in!, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /marcas
  # GET /marcas.json
  def index
    @marcas = Marca.order("name_marca").page(params[:page]).per_page(5)
  end

  # GET /marcas/1
  # GET /marcas/1.json
  def show
    
  end

  # GET /marcas/new
  def new
    @marca = Marca.new
  end

  # GET /marcas/1/edit
  def edit
  end

  # POST /marcas
  # POST /marcas.json
  def create
    @marca = Marca.new(marca_params)

    respond_to do |format|
      if @marca.save
        format.html { redirect_to '/marcas', notice: 'Registro Guardado' }
        format.json { render :show, status: :created, location: @marca }
      else
        format.html { render :new }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcas/1
  # PATCH/PUT /marcas/1.json
  def update
    respond_to do |format|
      if @marca.update(marca_params)
        format.html { redirect_to '/marcas', notice: 'Registro Actualizado' }
        format.json { render :show, status: :ok, location: @marca }
      else
        format.html { render :edit }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcas/1
  # DELETE /marcas/1.json
  def destroy
    @marca.destroy
    respond_to do |format|
      format.html { redirect_to marcas_url, notice: 'Marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_params
      params.require(:marca).permit(:name_marca)
    end

    def check_admin_logged_in! # admin must be logged in
        authenticate_admin!
    end
    def check_user_logged_in! # if admin is not logged in, user must be logged in
      if !admin_signed_in?
        authenticate_user!
      end   
    end
end
