class CreateAvistamientos < ActiveRecord::Migration[7.0]
  def change
    create_table :avistamientos do |t|
      t.string :nombrecomun
      t.string :nombrecientifico
      t.string :familia
      t.string :especie
      t.string :latitud
      t.string :longitud
      t.string :fecha
      t.string :hora
      t.string :nombreOrnitologo

      t.timestamps
    end
  end
end
