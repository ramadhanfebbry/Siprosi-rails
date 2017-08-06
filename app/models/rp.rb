class Rp < ActiveRecord::Base
  validates :schedule_qty , :keterangan, :plan_date, presence: true
  belongs_to :barang
  before_save :set_site
  has_many :rp, dependent: :destroy
after_create :notify
  def notify
    notif = Notification.first
    notif.rp_count = notif.rp_count+1
    notif.save
  end
  def set_site
    self.site = self.barang.kategori_id.eql?(1) ? 'Genteng' : 'Blok'
  end
end
