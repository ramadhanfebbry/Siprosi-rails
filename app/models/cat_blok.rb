class CatBlok < ActiveRecord::Base
  validates :cat_blok_id, :date, :hasil, :rusak, presence: true
  belongs_to :cetak_blok  
end
