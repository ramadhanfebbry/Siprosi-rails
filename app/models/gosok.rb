class Gosok < ActiveRecord::Base
  validates :rendam_id , :hasil, :rusak, presence: true
  belongs_to :rendam
  has_one :cat_gtg, dependent: :destroy
  after_create :notify

  def notify
    notif = Notification.first
    notif.gosok_count = notif.gosok_count+1
    notif.save
  end
end
