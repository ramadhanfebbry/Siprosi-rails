class CreateCatBloks < ActiveRecord::Migration
  def change
    create_table :cat_bloks do |t|
      t.integer :cetak_blok_id
      t.string :date
      t.integer :hasil
      t.integer :rusak
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
