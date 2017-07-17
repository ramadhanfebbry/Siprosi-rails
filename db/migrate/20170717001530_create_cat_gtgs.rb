class CreateCatGtgs < ActiveRecord::Migration
  def change
    create_table :cat_gtgs do |t|
      t.integer :gosok_id
      t.string :date
      t.integer :hasil
      t.integer :rusak
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
