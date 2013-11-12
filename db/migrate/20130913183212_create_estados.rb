class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome_estado
      t.string :sigla

      t.timestamps
    end
  end
end
