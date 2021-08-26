class DashboardController < ApplicationController
  def index
    @sales_amount_month = Sale.group_by_month(:date, last: 12).order(date: :asc).sum(:amount)
    @sales_count_month = Sale.group_by_month(:date, last:12).order(date: :asc).count
    @sales_average_month = Sale.group_by_month(:date, last: 12).order(date: :asc).average(:amount)
    @sales_origin_12_month = Sale.where('date >= ?', 1.year.ago.to_datetime).group(:origin).count
    @sales_origin_6_month = Sale.where('date >= ?', 6.month.ago.to_datetime).group(:origin).count
    @sales_origin_3_month = Sale.where('date >= ?', 3.month.ago.to_datetime).group(:origin).count
    @sales_origin_1_month = Sale.where('date >= ?', 1.month.ago.to_datetime).group(:origin).count
    @sales_blend_name_12_month = Sale.where('date >= ?', 1.year.ago.to_datetime).group(:blend).count
    @sales_blend_name_6_month = Sale.where('date >= ?', 6.month.ago.to_datetime).group(:blend).count
    @sales_blend_name_3_month = Sale.where('date >= ?', 3.month.ago.to_datetime).group(:blend).count
    @sales_blend_name_1_month = Sale.where('date >= ?', 1.month.ago.to_datetime).group(:blend).count
  end
end
