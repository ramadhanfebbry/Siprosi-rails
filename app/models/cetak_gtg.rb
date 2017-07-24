class CetakGtg < ActiveRecord::Base
  validates :ip_id , :hasil, :rusak, presence: true
  belongs_to :ip
  has_many :rendams, dependent: :destroy
end
