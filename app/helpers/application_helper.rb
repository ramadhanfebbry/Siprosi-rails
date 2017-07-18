module ApplicationHelper
  def has_access_to_create
    unless controller_name == "dashboard" 
      return (controller_name.eql?('rps') && ['ppic'].include?(current_user.role)) || 
      (controller_name.eql?('pbs') && ['produksi'].include?(current_user.role)) || 
      (controller_name.eql?('ips') && ['produksi'].include?(current_user.role)) ||
      (controller_name.eql?('cetak_gtgs') && ['cetak_genteng'].include?(current_user.role)) ||
      (controller_name.eql?('cetak_bloks') && ['cetak_blok'].include?(current_user.role))
    end
  end
end
