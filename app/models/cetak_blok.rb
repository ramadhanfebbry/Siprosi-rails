class CetakBlok < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_one :cat_blok, dependent: :destroy
  validates :ip_id, uniqueness: true
  after_create :notify

  def notify
    notif = Notification.first
    notif.cetak_blok_count = notif.cetak_blok_count+1
    notif.save
  end
end
