class CreateCetakBloks < ActiveRecord::Migration
  def change
    create_table :cetak_bloks do |t|
      t.integer :ip_id
      t.string :date
      t.integer :hasil
      t.integer :rusak
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
