class CreateBarangs < ActiveRecord::Migration
  def change
    create_table :barangs do |t|
      t.integer :kategori_id
      t.string :type
      t.string :unit
      t.string :warna
      t.string :berat
      t.string :warehouse

      t.timestamps null: false
    end
  end
end
