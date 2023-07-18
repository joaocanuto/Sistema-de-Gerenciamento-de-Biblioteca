class CreateLivroAutors < ActiveRecord::Migration[7.0]
  def change
    create_table :livro_autors do |t|
      t.references :livro, null: false, foreign_key: true
      t.references :autor, null: false, foreign_key: true
      t.index [:livro_id, :autor_id], unique: true
      t.timestamps
    end
  end
end
