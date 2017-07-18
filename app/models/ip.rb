class Ip < ActiveRecord::Base
  validates :date, :pb_id, presence: true
  belongs_to :pb
  has_many :cetak_gtgs, dependent: :destroy
  has_many :cetak_bloks, dependent: :destroy

  def self.genteng_site
    joins(:pb => :rp).where({"rps.site" => "Genteng"})
  end

  def self.blok_site
    joins(:pb => :rp).where({"rps.site" => "Blok"})
  end
end
