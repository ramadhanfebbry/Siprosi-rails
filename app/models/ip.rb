class Ip < ActiveRecord::Base
  validates :pb_id, presence: true
  belongs_to :pb
  has_one :cetak_gtg, dependent: :destroy
  has_one :cetak_blok, dependent: :destroy
  has_one :hp

  after_create :create_hp

  def self.genteng_site
    joins(:pb => :rp).where({"rps.site" => "Genteng"})
  end

  def self.blok_site
    joins(:pb => :rp).where({"rps.site" => "Blok"})
  end

  def create_hp
    Hp.create(ip_id: self.id)
  end

  after_create :notify

  def notify
    notif = Notification.first
    
    if(pb.rp.site.eql?("Genteng"))
      notif.ip_gtg_count = notif.ip_gtg_count+1
    else
      notif.ip_blok_count = notif.ip_blok_count+1
    end
    
    notif.save
  end
end
