require 'test_helper'

class ReceptorasControllerTest < ActionController::TestCase
  setup do
    @receptora = receptoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receptoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receptora" do
    assert_difference('Receptora.count') do
      post :create, receptora: { cargo: @receptora.cargo, ciudad: @receptora.ciudad, correo_electronico: @receptora.correo_electronico, departamento: @receptora.departamento, direccion: @receptora.direccion, fecha_elaboracion: @receptora.fecha_elaboracion, fecha_notificacion: @receptora.fecha_notificacion, fecha_recepcion: @receptora.fecha_recepcion, fecha_valoracion: @receptora.fecha_valoracion, nombre_etidad: @receptora.nombre_etidad, nombre_receptor: @receptora.nombre_receptor, numero_dictamen: @receptora.numero_dictamen, telefono: @receptora.telefono, tipo_entidad: @receptora.tipo_entidad }
    end

    assert_redirected_to receptora_path(assigns(:receptora))
  end

  test "should show receptora" do
    get :show, id: @receptora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receptora
    assert_response :success
  end

  test "should update receptora" do
    patch :update, id: @receptora, receptora: { cargo: @receptora.cargo, ciudad: @receptora.ciudad, correo_electronico: @receptora.correo_electronico, departamento: @receptora.departamento, direccion: @receptora.direccion, fecha_elaboracion: @receptora.fecha_elaboracion, fecha_notificacion: @receptora.fecha_notificacion, fecha_recepcion: @receptora.fecha_recepcion, fecha_valoracion: @receptora.fecha_valoracion, nombre_etidad: @receptora.nombre_etidad, nombre_receptor: @receptora.nombre_receptor, numero_dictamen: @receptora.numero_dictamen, telefono: @receptora.telefono, tipo_entidad: @receptora.tipo_entidad }
    assert_redirected_to receptora_path(assigns(:receptora))
  end

  test "should destroy receptora" do
    assert_difference('Receptora.count', -1) do
      delete :destroy, id: @receptora
    end

    assert_redirected_to receptoras_path
  end
end
