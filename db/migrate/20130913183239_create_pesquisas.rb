class CreatePesquisas < ActiveRecord::Migration
  def change
    create_table :pesquisas do |t|
      t.integer :a1
      t.integer :a2
      t.integer :b
      t.integer :c
      t.integer :d1
      t.integer :d2
      t.integer :e
      t.integer :imovel_especionado
      t.integer :n_amostra_inicial
      t.integer :n_amostra_final
      t.integer :quantidade_tubitos

      t.timestamps
    end
  end
end
