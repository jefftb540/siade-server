class CreateVisita < ActiveRecord::Migration
  def change
    create_table :visita do |t|
      t.integer :imovel_id
      t.datetime :hora
      t.integer :atividade_id
      t.integer :tratamento_id
      t.integer :pesquisa_id
      t.integer :pendencia
      t.date :data
      t.integer :ciclo
      t.integer :usuario_id

      t.timestamps
    end
  end
end
