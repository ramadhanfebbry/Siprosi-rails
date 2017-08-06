class Gosok < ActiveRecord::Base
  validates :rendam_id , :hasil, :rusak, presence: true
  belongs_to :rendam
  has_one :cat_gtg, dependent: :destroy
end
