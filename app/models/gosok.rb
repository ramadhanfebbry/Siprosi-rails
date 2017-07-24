class Gosok < ActiveRecord::Base
  validates :rendam_id , :hasil, :rusak, presence: true
  belongs_to :rendam
  has_many :cat_gtgs, dependent: :destroy
end
