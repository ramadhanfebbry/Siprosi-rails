class CetakGtg < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_one :rendam, dependent: :destroy
  validates :ip_id, uniqueness: true
  after_create :notify


  def notify
    notif = Notification.first
    notif.cetak_gtg_count = notif.cetak_gtg_count+1
    notif.save
  end

  validate :should_less_than_schedule_qty

  private

  def should_less_than_schedule_qty      
    if (self.hasil + self.rusak) != self.ip.pb.rp.schedule_qty
      errors.add('Quantity', "jumlah hasil & rusak harus sama dengan Schedule Qty")
    end
  end
end
