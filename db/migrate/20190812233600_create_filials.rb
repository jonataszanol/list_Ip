class CreateFilials < ActiveRecord::Migration[5.2]
  def change
    create_table :filials do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
