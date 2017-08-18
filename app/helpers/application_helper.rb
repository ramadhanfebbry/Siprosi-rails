module ApplicationHelper
  def has_access_to_create
    unless controller_name == "dashboard" 
      return (controller_name.eql?('rps') && ['ppic'].include?(current_user.role) && action_name.eql?('index')) || 
      # (controller_name.eql?('ips') && ['produksi'].include?(current_user.role)) ||
      # (controller_name.eql?('cetak_gtgs') && ['cetak_genteng'].include?(current_user.role)) ||
      # (controller_name.eql?('cetak_bloks') && ['cetak_blok'].include?(current_user.role)) ||
      # (controller_name.eql?('rendams') && ['rendam_genteng'].include?(current_user.role)) ||
      # (controller_name.eql?('gosoks') && ['gosok_genteng'].include?(current_user.role)) ||
      # (controller_name.eql?('cat_gtgs') && ['cat_genteng'].include?(current_user.role)) ||
      # (controller_name.eql?('cat_bloks') && ['cat_blok'].include?(current_user.role)) ||
      (controller_name.eql?('manage_users') && ['admin'].include?(current_user.role))
    end
  end

  def show_search
    return !(controller_name.eql?('dashboard') && action_name.eql?('home')) && (action_name.eql?('index'))
  end
end
