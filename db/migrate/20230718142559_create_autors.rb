class CreateAutors < ActiveRecord::Migration[7.0]
  def change
    create_table :autors do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
