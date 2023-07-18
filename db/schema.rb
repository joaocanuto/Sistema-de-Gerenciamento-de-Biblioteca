# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_18_142601) do
  create_table "admins", force: :cascade do |t|
    t.string "nome"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "autors", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clientes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clientes_on_reset_password_token", unique: true
  end

  create_table "emprestimos", force: :cascade do |t|
    t.integer "livro_id", null: false
    t.integer "cliente_id", null: false
    t.datetime "data_emprestimo"
    t.datetime "data_devolucao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_emprestimos_on_cliente_id"
    t.index ["livro_id"], name: "index_emprestimos_on_livro_id"
  end

  create_table "livro_autors", force: :cascade do |t|
    t.integer "livro_id", null: false
    t.integer "autor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_livro_autors_on_autor_id"
    t.index ["livro_id", "autor_id"], name: "index_livro_autors_on_livro_id_and_autor_id", unique: true
    t.index ["livro_id"], name: "index_livro_autors_on_livro_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "editora"
    t.integer "exemplares"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "emprestimos", "clientes"
  add_foreign_key "emprestimos", "livros"
  add_foreign_key "livro_autors", "autors"
  add_foreign_key "livro_autors", "livros"
end
