class CatGtg < ActiveRecord::Base
  validates :gosok_id , :hasil, :rusak, presence: true
  belongs_to :gosok
  has_one :hp, dependent: :destroy

  after_save :adjust_hp

  def adjust_hp
    hp.update_attributes(cat_gtg_id: self.id)
  end
end
