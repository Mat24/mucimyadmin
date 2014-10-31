json.array!(@remitentes) do |remitente|
  json.extract! remitente, :id, :nombre, :nombre_entidad, :tipo_entidad, :nombre_solicitante, :cargo, :ciudad, :departamento, :direccion, :telefono, :email, :fecha_solicitud
  json.url remitente_url(remitente, format: :json)
end
