class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.integer :cidade_id
      t.string :nome_bairro

      t.timestamps
    end
  end
end
