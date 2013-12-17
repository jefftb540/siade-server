class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.integer :estado_id
      t.string :nome_cidade

      t.timestamps
    end
  end
end
