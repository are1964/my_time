class HomeController < ApplicationController
  def index
    puts "index"
    #Time.methods.sort.each {|m| puts m}
    #p CspTime.find(:first)
    #CspTime.find_all_by_tiuser('DON').each {|d| p d}
    #puts 'time.new'
    #p Time.new
    #role = Role.find(:first)
    #puts "authority:#{role.authority}" 

    #roles = Role.all #find(:first)
    #roles.each {|r| puts "authority:#{r.authority}" }
    #Role.methods.sort.each {|m| puts m}
    #p Time.find_by_tiuser('don')
    #p Role.columns

    #select  date_format(l.created, '%m/%d/%Y') as workday, timeworked /60/60, pkey, summary, worklogbody   from worklog l
    #inner join jiraissue i
    #on l.issueid = i.id
    #where l.created between '2012-03-00' and '2012-03-29' and author = 'donat' 
    #order by   l.created desc;
    log = WorkLog.find(:first)
    puts "log.jira_issue from WorkLog.find(:first):"
    p log.jira_issue
    year = 2012
    month = 10
    last_day = Time.days_in_month(month, year)
    @from_ymd = Date.new(year, month, 1)
    @to_ymd  = Date.new(year, month, last_day)
    logs = WorkLog.joins(:jira_issue).where(:created => @from_ymd..@to_ymd)
    logs.each {|l| p l}

  end
end
