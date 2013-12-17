class CreateLados < ActiveRecord::Migration
  def change
    create_table :lados do |t|
      t.integer :quadra_id
      t.integer :rua_id
      t.string :referencia

      t.timestamps
    end
  end
end
