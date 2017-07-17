class CreateRendams < ActiveRecord::Migration
  def change
    create_table :rendams do |t|
      t.integer :cetak_gtg_id
      t.string :date
      t.integer :hasil
      t.integer :rusak
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
