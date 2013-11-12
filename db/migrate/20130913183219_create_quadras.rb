class CreateQuadras < ActiveRecord::Migration
  def change
    create_table :quadras do |t|
      t.integer :bairro_id
      t.integer :total_imoveis
      t.integer :total_c
      t.integer :total_r
      t.integer :total_pe
      t.integer :total_tb
      t.integer :total_o

      t.timestamps
    end
  end
end
