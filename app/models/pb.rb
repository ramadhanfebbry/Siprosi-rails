class Pb < ActiveRecord::Base
  validates :date, :rp_id, presence: true
  belongs_to :rp
  has_many :ips, dependent: :destroy
end
