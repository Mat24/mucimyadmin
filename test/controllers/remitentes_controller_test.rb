require 'test_helper'

class RemitentesControllerTest < ActionController::TestCase
  setup do
    @remitente = remitentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remitentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remitente" do
    assert_difference('Remitente.count') do
      post :create, remitente: { cargo: @remitente.cargo, ciudad: @remitente.ciudad, departamento: @remitente.departamento, direccion: @remitente.direccion, email: @remitente.email, fecha_solicitud: @remitente.fecha_solicitud, nombre: @remitente.nombre, nombre_entidad: @remitente.nombre_entidad, nombre_solicitante: @remitente.nombre_solicitante, telefono: @remitente.telefono, tipo_entidad: @remitente.tipo_entidad }
    end

    assert_redirected_to remitente_path(assigns(:remitente))
  end

  test "should show remitente" do
    get :show, id: @remitente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remitente
    assert_response :success
  end

  test "should update remitente" do
    patch :update, id: @remitente, remitente: { cargo: @remitente.cargo, ciudad: @remitente.ciudad, departamento: @remitente.departamento, direccion: @remitente.direccion, email: @remitente.email, fecha_solicitud: @remitente.fecha_solicitud, nombre: @remitente.nombre, nombre_entidad: @remitente.nombre_entidad, nombre_solicitante: @remitente.nombre_solicitante, telefono: @remitente.telefono, tipo_entidad: @remitente.tipo_entidad }
    assert_redirected_to remitente_path(assigns(:remitente))
  end

  test "should destroy remitente" do
    assert_difference('Remitente.count', -1) do
      delete :destroy, id: @remitente
    end

    assert_redirected_to remitentes_path
  end
end
