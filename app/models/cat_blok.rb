class CatBlok < ActiveRecord::Base
  validates :cetak_blok_id , :hasil, :rusak, presence: true
  belongs_to :cetak_blok  
  after_save :adjust_hp
  has_one :hp, dependent: :destroy

  validates :cetak_blok_id, uniqueness: true

  after_create :notify

  def notify
    notif = Notification.first
    notif.cat_blok_count = notif.cat_blok_count+1
    notif.save
  end

  def adjust_hp
    cetak_blok.ip.hp.update_attributes(cat_blok_id: self.id)
  end
end
