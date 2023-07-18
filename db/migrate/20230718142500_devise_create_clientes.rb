# frozen_string_literal: true

class DeviseCreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      t.timestamps null: false
    end

    add_index :clientes, :email,                unique: true
    add_index :clientes, :reset_password_token, unique: true
  end
end
