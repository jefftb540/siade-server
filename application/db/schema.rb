# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130913183241) do

  create_table "atividades", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bairros", force: true do |t|
    t.integer  "cidade_id"
    t.string   "nome_bairro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", force: true do |t|
    t.integer  "estado_id"
    t.string   "nome_cidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "nome_estado"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imovels", force: true do |t|
    t.integer  "lado_id"
    t.integer  "tipo_id"
    t.integer  "habitantes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lados", force: true do |t|
    t.integer  "quadra_id"
    t.integer  "rua_id"
    t.string   "referencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pesquisas", force: true do |t|
    t.integer  "a1"
    t.integer  "a2"
    t.integer  "b"
    t.integer  "c"
    t.integer  "d1"
    t.integer  "d2"
    t.integer  "e"
    t.integer  "imovel_especionado"
    t.integer  "n_amostra_inicial"
    t.integer  "n_amostra_final"
    t.integer  "quantidade_tubitos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "tiutlo"
    t.text     "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quadras", force: true do |t|
    t.integer  "bairro_id"
    t.integer  "total_imoveis"
    t.integer  "total_c"
    t.integer  "total_r"
    t.integer  "total_pe"
    t.integer  "total_tb"
    t.integer  "total_o"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ruas", force: true do |t|
    t.string   "nome_rua"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", force: true do |t|
    t.string   "nome_tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tratamentos", force: true do |t|
    t.integer  "eliminados"
    t.integer  "imovel_tratado"
    t.string   "tipo_larvicida"
    t.float    "quantidade_larvicida"
    t.integer  "quantidade_deposito_tratado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.string   "senha"
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visita", force: true do |t|
    t.integer  "imovel_id"
    t.datetime "hora"
    t.integer  "atividade_id"
    t.integer  "tratamento_id"
    t.integer  "pesquisa_id"
    t.integer  "pendencia"
    t.date     "data"
    t.integer  "ciclo"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
