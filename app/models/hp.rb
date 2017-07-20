class Hp < ActiveRecord::Base
  belongs_to :cat_blok
  belongs_to :cat_gtg

  def ip
    if cat_blok
      cat_blok.cetak_blok.ip
    else
      cat_gtg.gosok.rendam.cetak_gtg.ip
    end
  end

  def rp
    ip.pb.rp
  end

  def self.hasil_prod_genteng
    arr = []
    12.times do |i|
      dt = DateTime.new(2017, i+1, 1)
      arr << Hp.where(created_at: dt..dt.end_of_month).where.not(cat_gtg_id: nil).sum(:target_produksi)
    end
    arr    
  end

  def self.hasil_prod_blok
    arr = []
    12.times do |i|
      dt = DateTime.new(2017, i+1, 1)
      arr << Hp.where(created_at: dt..dt.end_of_month).where.not(cat_blok_id: nil).sum(:target_produksi)
    end
    arr    
  end

end
