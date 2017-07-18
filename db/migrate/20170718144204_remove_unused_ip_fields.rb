class RemoveUnusedIpFields < ActiveRecord::Migration
  def change
    remove_column :ips, :plan_date
    remove_column :ips, :item_name
    remove_column :ips, :schedule_qty
    remove_column :ips, :keterangan
    add_column :ips, :pb_id, :integer
  end
end
