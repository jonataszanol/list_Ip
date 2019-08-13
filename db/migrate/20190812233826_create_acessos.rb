class CreateAcessos < ActiveRecord::Migration[5.2]
  def change
    create_table :acessos do |t|
      t.string :descricao
      t.string :obs

      t.timestamps
    end
  end
end
