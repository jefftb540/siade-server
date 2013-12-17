class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.integer :lado_id
      t.integer :tipo_id
      t.integer :habitantes

      t.timestamps
    end
  end
end
