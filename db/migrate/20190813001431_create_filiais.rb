class CreateFiliais < ActiveRecord::Migration[5.2]
  def change
    create_table :filiais do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
