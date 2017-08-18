class Barang < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}

  has_many :rps, dependent: :destroy
end
