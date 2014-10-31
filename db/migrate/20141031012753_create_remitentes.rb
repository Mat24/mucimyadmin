class CreateRemitentes < ActiveRecord::Migration
  def change
    create_table :remitentes do |t|
      t.string :nombre
      t.string :nombre_entidad
      t.string :tipo_entidad
      t.string :nombre_solicitante
      t.string :cargo
      t.string :ciudad
      t.string :departamento
      t.string :direccion
      t.string :telefono
      t.string :email
      t.date :fecha_solicitud

      t.timestamps
    end
  end
end
