class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :editora
      t.integer :exemplares
      t.string :isbn

      t.timestamps
    end
  end
end
