class Hp < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_for, :against => self.column_names.map {|x| x.to_sym}
  belongs_to :cat_blok
  belongs_to :cat_gtg
  belongs_to :ip

  after_create :notify

  def notify
    notif = Notification.first
    notif.hp_count = notif.hp_count+1
    notif.save
  end
 # def ip
 #    if cat_blok
 #      cat_blok.cetak_blok.ip
 #    else
 #      cat_gtg.gosok.rendam.cetak_gtg.ip
 #    end
 #  end

  def status_pengerjaan
    status = ""
    if rp.site.eql?('Genteng') 
      if ip && ip.cetak_gtg.blank?
        status = "Instruksi Produksi"
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam.blank?
        status = "Cetak Genteng"
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam && ip.cetak_gtg.rendam.gosok.blank?
        status = "Rendam"    
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam && ip.cetak_gtg.rendam.gosok && ip.cetak_gtg.rendam.gosok.cat_gtg.blank?
        status = "Gosok"    
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam && ip.cetak_gtg.rendam.gosok && ip.cetak_gtg.rendam.gosok.cat_gtg
        status = "Cat Genteng"    
      end
    else
      if ip && ip.cetak_blok.blank?
        status = "Instruksi Produksi"
      elsif ip && ip.cetak_blok && ip.cetak_blok.cat_blok.blank?
        status = "Cetak Blok"
      elsif ip && ip.cetak_blok && ip.cetak_blok.cat_blok
        status = "Cat Blok"          
      end
    end
  end

  def hasil_status_pengerjaan
    
    hasil = if rp.site.eql?('Genteng') 
      if ip && ip.cetak_gtg.blank?
         0
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam.blank?
        ip.cetak_gtg.hasil
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam && ip.cetak_gtg.rendam.gosok.blank?
        ip.cetak_gtg.rendam.hasil
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam && ip.cetak_gtg.rendam.gosok && ip.cetak_gtg.rendam.gosok.cat_gtg.blank?
        ip.cetak_gtg.rendam.gosok.hasil
      elsif ip && ip.cetak_gtg && ip.cetak_gtg.rendam && ip.cetak_gtg.rendam.gosok && ip.cetak_gtg.rendam.gosok.cat_gtg
        ip.cetak_gtg.rendam.gosok.cat_gtg.hasil
      end
    else
      if ip && ip.cetak_blok.blank?
        0
      elsif ip && ip.cetak_blok && ip.cetak_blok.cat_blok.blank?
        ip.cetak_blok.hasil
      elsif ip && ip.cetak_blok && ip.cetak_blok.cat_blok
        ip.cetak_blok.cat_blok.hasil
      end
    end
    return hasil
  end

  def self.reject
    res_one = joins(:cat_blok => {:cetak_blok => {:ip => {:pb => :rp}} }).where("rps.schedule_qty > cetak_bloks.hasil")
    res_two = joins(:cat_gtg => {:gosok => {:rendam => {:cetak_gtg => {:ip => {:pb => :rp}}}}}).where("rps.schedule_qty > cat_gtgs.hasil")
    return res_one + res_two
  end

  def self.approved
    res_one = joins(:cat_blok => {:cetak_blok => {:ip => {:pb => :rp}} }).where("rps.schedule_qty <= cetak_bloks.hasil OR cat_bloks.id IS NULL")
    res_two = joins(:cat_gtg => {:gosok => {:rendam => {:cetak_gtg => {:ip => {:pb => :rp}}}}}).where("rps.schedule_qty <= cat_gtgs.hasil OR cat_gtgs.id IS NULL")
    return res_one + res_two
  end

  
  def hasil_produksi
    if cat_blok
      cat_blok.hasil
    else
      cat_gtg.hasil
    end
  end

  def target_produksi
    rp.schedule_qty    
  end

  def rp
    ip.pb.rp rescue nil
  end

  def self.hasil_prod_genteng
    arr = []
    12.times do |i|
      dt = DateTime.new(2017, i+1, 1)
      arr << Hp.where(created_at: dt..dt.end_of_month).where.not(cat_gtg_id: nil).joins(:cat_gtg => {:gosok => {:rendam => {:cetak_gtg => {:ip => {:pb => :rp}}}}}).sum("rps.schedule_qty")
    end
    arr    
  end

  def self.hasil_prod_blok
    arr = []
    12.times do |i|
      dt = DateTime.new(2017, i+1, 1)
      arr << Hp.where(created_at: dt..dt.end_of_month).where.not(cat_blok_id: nil).joins(:cat_blok => {:cetak_blok => {:ip => {:pb => :rp}}}).sum("rps.schedule_qty")
    end
    arr    
  end

end
