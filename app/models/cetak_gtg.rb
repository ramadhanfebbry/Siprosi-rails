class CetakGtg < ActiveRecord::Base
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_one :rendam, dependent: :destroy
  after_create :notify

  def notify
    notif = Notification.first
    notif.cetak_gtg_count = notif.cetak_gtg_count+1
    notif.save
  end
end
