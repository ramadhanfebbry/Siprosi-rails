class Pb < ActiveRecord::Base
  validates :date, :pb_id, presence: true
  belongs_to :pb
end
