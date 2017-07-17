class Rp < ActiveRecord::Base
  validates :item_name, :schedule_qty, :site, :date, :keterangan, :plan_date, presence: true
end
