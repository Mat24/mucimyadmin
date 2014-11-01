class CreateReceptoras < ActiveRecord::Migration
  def change
    create_table :receptoras do |t|
      t.string :nombre_etidad
      t.string :tipo_entidad
      t.string :nombre_receptor
      t.string :cargo
      t.string :ciudad
      t.string :departamento
      t.string :direccion
      t.string :telefono
      t.string :correo_electronico
      t.date :fecha_recepcion
      t.date :fecha_valoracion
      t.date :fecha_elaboracion
      t.date :fecha_notificacion
      t.string :numero_dictamen

      t.timestamps
    end
  end
end
