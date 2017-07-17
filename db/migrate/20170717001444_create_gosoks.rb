class CreateGosoks < ActiveRecord::Migration
  def change
    create_table :gosoks do |t|
      t.integer :rendam_id
      t.string :date
      t.integer :hasil
      t.integer :rusak
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
