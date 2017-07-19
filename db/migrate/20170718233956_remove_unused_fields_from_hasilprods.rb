class RemoveUnusedFieldsFromHasilprods < ActiveRecord::Migration
  def change
    remove_column :hps, :rp_id
    remove_column :hps, :ip_id
  end
end
