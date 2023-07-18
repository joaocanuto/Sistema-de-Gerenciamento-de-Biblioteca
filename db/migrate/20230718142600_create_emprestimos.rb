class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.references :livro, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.timestamp :data_emprestimo
      t.timestamp :data_devolucao

      t.timestamps
    end
  end
end
