class Rp < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  
  validates :schedule_qty, :keterangan, :plan_date, presence: true
  belongs_to :barang
  before_save :set_site
  has_one :pb, dependent: :destroy
  
  after_create :notify
  
  def notify
    notif = Notification.first
    notif.rp_count = notif.rp_count+1
    notif.save
  end
  def set_site
    self.site = self.barang.kategori_id.eql?(1) ? 'Genteng' : 'Blok'
  end

  def mask_id
    "RP#{self.id}"
  end
end
