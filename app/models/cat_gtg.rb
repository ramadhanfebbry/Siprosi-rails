class CatGtg < ActiveRecord::Base
  validates :gosok_id, :date, :hasil, :rusak, presence: true
  belongs_to :gosok
  has_one :hp, dependent: :destroy

  after_save :adjust_hp

  def adjust_hp
    Hp.create(cat_gtg_id: self.id, hasil_produksi: self.hasil, target_produksi: self.gosok.rendam.cetak_gtg.ip.pb.rp.schedule_qty)
  end
end
