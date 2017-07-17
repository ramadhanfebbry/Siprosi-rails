class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :date
      t.string :plan_date
      t.string :item_name
      t.string :schedule_qty
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
