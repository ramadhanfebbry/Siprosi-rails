class RemoveDateFromSomeFields < ActiveRecord::Migration
  def change
    remove_column :cat_bloks, :date
    remove_column :cat_gtgs, :date
    remove_column :cetak_bloks, :date
    remove_column :cetak_gtgs, :date
    remove_column :pbs, :date
    remove_column :ips, :date
    remove_column :rps, :date
    remove_column :rendams, :date
    remove_column :rps, :item_name
    remove_column :hps, :hasil_produksi
    remove_column :hps, :target_produksi
  end
end
