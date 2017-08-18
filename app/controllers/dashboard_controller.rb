class DashboardController < ApplicationController
  def home
  end

  def laporan
     if(params["tipe"] == "Genteng")
      @hps = params[:q] ? Hp.search_for(params[:q]).where("cat_gtg_id IS NOT NULL") : Hp.where("cat_gtg_id IS NOT NULL")
    elsif (params["tipe"] == "Blok")
      @hps = params[:q] ? Hp.search_for(params[:q]).where("cat_blok_id IS NOT NULL") : Hp.where("cat_blok_id IS NOT NULL")
    else
      @hps = params[:q] ? Hp.search_for(params[:q]) : Hp.all
    end

    if(params["start_date"].present? && params["end_date"].present?)
      @hps =  @hps.where("created_at > ? AND created_at < ?", "#{params['start_date']} 00:00:00", "#{params['end_date']} 00:00:00")
    elsif (params['start_date'].present? && !params['end_date'].present?)
      @hps =  @hps.where("created_at > ?", "#{params['start_date']} 00:00:00")
    elsif (!params['start_date'].present? && params['end_date'].present?)
      @hps =  @hps.where("created_at < ?", "#{params['end_date']} 00:00:00")
    else
    end


    hasil_prod_genteng = Hp.hasil_prod_genteng
    hasil_prod_blok = Hp.hasil_prod_blok
    months = Date::MONTHNAMES.dup
    months.shift

    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title({ :text=>"Laporan Produksi"})
      f.options[:xAxis][:categories] = months
      f.labels(:items=>[:html=>"Total Produksi", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ])      
      f.series(:type=> 'column',:name=> 'Genteng',:data=> hasil_prod_genteng)
      f.series(:type=> 'column',:name=> 'Blok',:data=> hasil_prod_blok)
      
    end
  end
  
  def laporan_print
     if(params["tipe"] == "Genteng")
      @hps = Hp.where("cat_gtg_id IS NOT NULL")
    elsif (params["tipe"] == "Blok")
      @hps = Hp.where("cat_blok_id IS NOT NULL")
    else
      @hps = Hp.all   
    end

    if(params["start_date"].present? && params["end_date"].present?)
      @hps =  @hps.where("created_at > ? AND created_at < ?", "#{params['start_date']} 00:00:00", "#{params['end_date']} 00:00:00")
    elsif (params['start_date'].present? && !params['end_date'].present?)
      @hps =  @hps.where("created_at > ?", "#{params['start_date']} 00:00:00")
    elsif (!params['start_date'].present? && params['end_date'].present?)
      @hps =  @hps.where("created_at < ?", "#{params['end_date']} 00:00:00")
    else
      
    end
    render layout: false
  end


end
