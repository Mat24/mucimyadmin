class ReceptorasController < ApplicationController
  before_action :set_receptora, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @receptoras = Receptora.all
    respond_with(@receptoras)
  end

  def show
    respond_with(@receptora)
  end

  def new
    @receptora = Receptora.new
    respond_with(@receptora)
  end

  def edit
  end

  def create
    @receptora = Receptora.new(receptora_params)
    @receptora.save
    respond_with(@receptora)
  end

  def update
    @receptora.update(receptora_params)
    respond_with(@receptora)
  end

  def destroy
    @receptora.destroy
    respond_with(@receptora)
  end

  private
    def set_receptora
      @receptora = Receptora.find(params[:id])
    end

    def receptora_params
      params.require(:receptora).permit(:nombre_etidad, :tipo_entidad, :nombre_receptor, :cargo, :ciudad, :departamento, :direccion, :telefono, :correo_electronico, :fecha_recepcion, :fecha_valoracion, :fecha_elaboracion, :fecha_notificacion, :numero_dictamen)
    end
end
