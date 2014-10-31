class RemitentesController < ApplicationController
  before_action :set_remitente, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  def index
    @remitentes = Remitente.all
    respond_with(@remitentes)
  end

  def show
    respond_with(@remitente)
  end

  def new
    @remitente = Remitente.new
    respond_with(@remitente)
  end

  def edit
  end

  def create
    @remitente = Remitente.new(remitente_params)
    @remitente.save
    respond_with(@remitente)
  end

  def update
    @remitente.update(remitente_params)
    respond_with(@remitente)
  end

  def destroy
    @remitente.destroy
    respond_with(@remitente)
  end

  private
    def set_remitente
      @remitente = Remitente.find(params[:id])
    end

    def remitente_params
      params.require(:remitente).permit(:nombre, :nombre_entidad, :tipo_entidad, :nombre_solicitante, :cargo, :ciudad, :departamento, :direccion, :telefono, :email, :fecha_solicitud)
    end
end
