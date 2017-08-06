class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :cat_blok_count, default: 0
      t.integer :cat_gtg_count, default: 0
      t.integer :gosok_count, default: 0
      t.integer :hp_count, default: 0
      t.integer :ip_gtg_count, default: 0
      t.integer :ip_blok_count, default: 0
      t.integer :pb_count, default: 0
      t.integer :rendam_count, default: 0
      t.integer :rp_count, default: 0
      t.integer :konfirmasi_count, default: 0
      t.integer :cetak_gtg_count, default: 0



      t.timestamps null: false
    end
  end
end
