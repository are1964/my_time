
class CspTimesController < ApplicationController
  # GET /csp_times
  # GET /csp_times.json
  def index
    year = params['year'].to_i
    month = params['month'].to_i
    last_day = Time.days_in_month(month, year)
    @from_ymd = Date.new(year, month, 1)
    @to_ymd  = Date.new(year, month, last_day)
    @csp_times = CspTime.where("tiuser like 'DON%' and tidate between :from_ymd and :to_ymd",
                 {:from_ymd => @from_ymd, :to_ymd  => @to_ymd} )
    @work_logs = WorkLog.joins(:jira_issue).where(:created => @from_ymd..@to_ymd).order("created DESC")
    @work_logs.each {|l| p l}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @csp_times }
    end
  end

end
