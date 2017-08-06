class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :set_badge

  def set_badge
    @notification = Notification.first
    if(controller_name.eql?('rps') && current_user.role.eql?('produksi'))
      @notification.rp_count = 0
      @notification.save
    elsif(controller_name.eql?('pbs') && current_user.role.eql?('gudang'))
      @notification.pb_count = 0
      @notification.save
    elsif(controller_name.eql?('pbs') && current_user.role.eql?('produksi'))
      @notification.konfirmasi_count = 0
      @notification.save
    elsif(controller_name.eql?('ips') && current_user.role.eql?('cetak_genteng'))
      @notification.ip_gtg_count = 0
      @notification.save
    elsif(controller_name.eql?('ips') && current_user.role.eql?('cetak_blok'))
      @notification.ip_blok_count = 0
      @notification.save
    elsif(controller_name.eql?('cetak_gtgs') && current_user.role.eql?('rendam_genteng'))
      @notification.cetak_gtg_count = 0
      @notification.save
    elsif(controller_name.eql?('rendams') && current_user.role.eql?('gosok_genteng'))
      @notification.rendam_count = 0
      @notification.save
    elsif(controller_name.eql?('gosoks') && current_user.role.eql?('cat_genteng'))
      @notification.gosok_count = 0
      @notification.save
    elsif(controller_name.eql?('cetak_bloks') && current_user.role.eql?('cat_blok'))
      @notification.cat_blok_count = 0
      @notification.save
    elsif(controller_name.eql?('hps') && current_user.role.eql?('produksi'))
      @notification.cat_blok_count = 0
      @notification.cat_gtg_count = 0
      @notification.save
    end
  end
end
