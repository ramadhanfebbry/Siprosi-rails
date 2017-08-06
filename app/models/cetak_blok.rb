class CetakBlok < ActiveRecord::Base
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_one :cat_blok, dependent: :destroy
end
