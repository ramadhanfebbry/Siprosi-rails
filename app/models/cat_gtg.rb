class CatGtg < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :gosok_id , :hasil, :rusak, presence: true
  belongs_to :gosok
  has_one :hp, dependent: :destroy
  validates :gosok_id, uniqueness: true

  after_save :adjust_hp

  after_create :notify

  def notify
    notif = Notification.first
    notif.cat_gtg_count = notif.cat_gtg_count+1
    notif.save
  end
  def adjust_hp
    gosok.rendam.cetak_gtg.ip.hp.update_attributes(cat_gtg_id: self.id)
  end

  validate :should_less_than_schedule_qty

  private

  def should_less_than_schedule_qty      
    if (self.hasil + self.rusak) != self.gosok.hasil
      errors.add('Quantity', "jumlah hasil & rusak harus sama dengan hasil Gosok Genteng (#{self.gosok.hasil})")      
    end
  end
end
