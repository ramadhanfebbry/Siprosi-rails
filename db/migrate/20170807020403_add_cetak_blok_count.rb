class AddCetakBlokCount < ActiveRecord::Migration
  def change
    add_column :notifications, :cetak_blok_count, :integer, default: 0
  end
end
