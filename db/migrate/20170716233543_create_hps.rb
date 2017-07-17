class CreateHps < ActiveRecord::Migration
  def change
    create_table :hps do |t|
      t.integer :ip_id
      t.integer :rp_id
      t.integer :hasil_produksi
      t.integer :target_produksi

      t.timestamps null: false
    end
  end
end
