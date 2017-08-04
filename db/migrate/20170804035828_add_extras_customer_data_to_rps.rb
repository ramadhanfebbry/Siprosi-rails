class AddExtrasCustomerDataToRps < ActiveRecord::Migration
  def change
    add_column :rps, :nama_customer, :string
    add_column :rps, :alamat, :string
    add_column :rps, :telpon, :string
  end
end
