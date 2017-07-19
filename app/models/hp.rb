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

end
