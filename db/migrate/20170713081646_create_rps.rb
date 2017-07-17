class CreateRps < ActiveRecord::Migration
  def change
    create_table :rps do |t|
      t.integer :schedule_qty
      t.string :item_name
      t.string :site
      t.string :date
      t.text :keterangan
      t.string :plan_date
      t.integer :barang_id

      t.timestamps null: false
    end
  end
end
