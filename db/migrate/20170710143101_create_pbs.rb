class CreatePbs < ActiveRecord::Migration
  def change
    create_table :pbs do |t|
      t.integer :rp_id
      t.string :date
      t.string :status

      t.timestamps null: false
    end
  end
end
