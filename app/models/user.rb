class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLE = %w(admin ppic produksi gudang cetak_genteng rendam_genteng gudang gosok_genteng cat_genteng cetak_blok cat_blok)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
