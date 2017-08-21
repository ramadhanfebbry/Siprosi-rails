class CatBlok < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  validates :cetak_blok_id , :hasil, :rusak, presence: true
  belongs_to :cetak_blok  
  after_save :adjust_hp
  has_one :hp, dependent: :destroy

  validates :cetak_blok_id, uniqueness: true

  after_create :notify

  def notify
    notif = Notification.first
    notif.cat_blok_count = notif.cat_blok_count+1
    notif.save
  end

  def adjust_hp
    cetak_blok.ip.hp.update_attributes(cat_blok_id: self.id)
  end

  validate :should_less_than_schedule_qty

  private

  def should_less_than_schedule_qty      
    if (self.hasil + self.rusak) != self.cetak_blok.hasil
      errors.add('Quantity', "jumlah hasil & rusak harus sama dengan hasil Cetak Blok (#{self.cetak_blok.hasil})")
      
    end
  end
end
