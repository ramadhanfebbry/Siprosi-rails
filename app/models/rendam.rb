class Rendam < ActiveRecord::Base
  validates :cetak_gtg_id , :hasil, :rusak, presence: true
  belongs_to :cetak_gtg
  has_many :gosoks, dependent: :destroy
end
