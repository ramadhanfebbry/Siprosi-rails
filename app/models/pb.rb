class Pb < ActiveRecord::Base
  validates :rp_id, presence: true
  belongs_to :rp
  has_many :ips, dependent: :destroy
  after_create :notify
  after_save :notify_konfirm

  def notify
    notif = Notification.first
    notif.pb_count = notif.pb_count+1
    notif.save
  end

  def notify_konfirm
    if self.status.eql?('Konfirmasi')
      notif = Notification.first
      notif.konfirmasi_count = notif.konfirmasi_count+1
      notif.save
    end
    
  end
end
