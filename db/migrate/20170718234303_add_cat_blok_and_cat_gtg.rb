class AddCatBlokAndCatGtg < ActiveRecord::Migration
  def change
    add_column :hps, :cat_blok_id, :integer
    add_column :hps, :cat_gtg_id, :integer
  end
end
