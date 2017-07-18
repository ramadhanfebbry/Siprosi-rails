class Barang < ActiveRecord::Base
  has_many :rps, dependent: :destroy
end
