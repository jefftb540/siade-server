class CreateTratamentos < ActiveRecord::Migration
  def change
    create_table :tratamentos do |t|
      t.integer :eliminados
      t.integer :imovel_tratado
      t.string :tipo_larvicida
      t.float :quantidade_larvicida
      t.integer :quantidade_deposito_tratado

      t.timestamps
    end
  end
end
