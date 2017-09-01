class HomeController < ApplicationController
  before_action :check

  def index
    @companies = Company.where(:start_time=>{:$lte=>DateTime.now+5.hours+30.minutes}, :end_time=>{:$gte=>DateTime.now+5.hours+30.minutes}).to_a
  end

  def register
    #check conditions and make registration
  end

end
