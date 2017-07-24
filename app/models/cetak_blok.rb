class CetakBlok < ActiveRecord::Base
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_many :cat_bloks, dependent: :destroy
end
