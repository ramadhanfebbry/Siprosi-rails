class Pb < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :rp_id, presence: true
  belongs_to :rp
  has_one :ip, dependent: :destroy
  after_create :notify
  after_save :notify_konfirm
  validates :rp_id, uniqueness: true

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
  def mask_id
    "PB#{self.id}"
  end
end
