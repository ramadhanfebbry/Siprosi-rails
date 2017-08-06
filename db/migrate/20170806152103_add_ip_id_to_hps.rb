class AddIpIdToHps < ActiveRecord::Migration
  def change
    add_column :hps, :ip_id, :integer
  end
end
