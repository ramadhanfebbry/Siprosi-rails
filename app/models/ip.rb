class Ip < ActiveRecord::Base
  validates :pb_id, presence: true
  belongs_to :pb
  has_many :cetak_gtgs, dependent: :destroy
  has_many :cetak_bloks, dependent: :destroy

  def self.genteng_site
    joins(:pb => :rp).where({"rps.site" => "Genteng"})
  end

  def self.blok_site
    joins(:pb => :rp).where({"rps.site" => "Blok"})
  end

  def create_hp
    Hp.create(ip_id: self.id)
  end
end
