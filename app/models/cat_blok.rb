class CatBlok < ActiveRecord::Base
  validates :cetak_blok_id , :hasil, :rusak, presence: true
  belongs_to :cetak_blok  
  after_save :adjust_hp
  has_one :hp, dependent: :destroy

  def adjust_hp
    Hp.create(cat_blok_id: self.id, hasil_produksi: self.hasil, target_produksi: self.cetak_blok.ip.pb.rp.schedule_qty)
  end
end
