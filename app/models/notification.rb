class Notification < ActiveRecord::Base
  def hasil_produksi
    self.cat_blok_count+self.cat_gtg_count
  end
end
