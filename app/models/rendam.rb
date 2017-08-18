class Rendam < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :cetak_gtg_id , :hasil, :rusak, presence: true
  belongs_to :cetak_gtg
  has_one :gosok, dependent: :destroy

  validates :cetak_gtg_id, uniqueness: true

  after_create :notify
  def notify
    notif = Notification.first
    notif.rendam_count = notif.rendam_count+1
    notif.save
  end
end
