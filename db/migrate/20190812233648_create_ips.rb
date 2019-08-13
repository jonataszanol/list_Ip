class CreateIps < ActiveRecord::Migration[5.2]
  def change
    create_table :ips do |t|
      t.string :ip
      t.string :usuario
      t.string :setor
      t.references :filial, foreign_key: true
      t.references :acessos, foreign_key: true
      t.datetime :data_inicio
      t.datetime :data_fim

      t.timestamps
    end
  end
end
