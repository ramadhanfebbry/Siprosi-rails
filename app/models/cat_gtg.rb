class CatGtg < ActiveRecord::Base
  validates :gosok_id, :date, :hasil, :rusak, presence: true
  belongs_to :gosok
  
end
