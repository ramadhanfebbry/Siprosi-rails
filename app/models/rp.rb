class Rp < ActiveRecord::Base
  validates :item_name, :schedule_qty, :date, :keterangan, :plan_date, presence: true
  belongs_to :barang
  before_save :set_site
  has_many :rp, dependent: :destroy

  def set_site
    self.site = self.barang.kategori_id.eql?(1) ? 'Genteng' : 'Blok'
  end
end
