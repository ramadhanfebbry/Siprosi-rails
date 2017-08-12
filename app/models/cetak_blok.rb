class CetakBlok < ActiveRecord::Base
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_one :cat_blok, dependent: :destroy
  validates :cetak_blok_id, uniqueness: true
  validates :ip_id, uniqueness: true
  after_create :notify

  def notify
    notif = Notification.first
    notif.cetak_blok_count = notif.cetak_blok_count+1
    notif.save
  end
end
