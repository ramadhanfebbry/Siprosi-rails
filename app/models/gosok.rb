class Gosok < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :rendam_id , :hasil, :rusak, presence: true
  belongs_to :rendam
  has_one :cat_gtg, dependent: :destroy
  validates :rendam_id, uniqueness: true
  after_create :notify

  def notify
    notif = Notification.first
    notif.gosok_count = notif.gosok_count+1
    notif.save
  end

  validate :should_less_than_schedule_qty

  private

  def should_less_than_schedule_qty      
    if (self.hasil + self.rusak) > self.rendam.cetak_gtg.ip.pb.rp.schedule_qty
      errors.add('Quantity', "tidak boleh lebih dari Schedule Qty")
    end
  end
end
