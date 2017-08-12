class CatGtg < ActiveRecord::Base
  validates :gosok_id , :hasil, :rusak, presence: true
  belongs_to :gosok
  has_one :hp, dependent: :destroy
  validates :gosok_id, uniqueness: true

  after_save :adjust_hp

  after_create :notify

  def notify
    notif = Notification.first
    notif.cat_gtg_count = notif.cat_gtg_count+1
    notif.save
  end
  def adjust_hp
    gosok.rendam.cetak_gtg.ip.hp.update_attributes(cat_gtg_id: self.id)
  end
end
