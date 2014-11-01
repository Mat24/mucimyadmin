json.array!(@receptoras) do |receptora|
  json.extract! receptora, :id, :nombre_etidad, :tipo_entidad, :nombre_receptor, :cargo, :ciudad, :departamento, :direccion, :telefono, :correo_electronico, :fecha_recepcion, :fecha_valoracion, :fecha_elaboracion, :fecha_notificacion, :numero_dictamen
  json.url receptora_url(receptora, format: :json)
end
