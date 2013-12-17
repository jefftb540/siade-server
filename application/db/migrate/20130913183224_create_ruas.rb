class CreateRuas < ActiveRecord::Migration
  def change
    create_table :ruas do |t|
      t.string :nome_rua

      t.timestamps
    end
  end
end
