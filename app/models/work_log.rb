#select  date_format(l.created, '%m/%d/%Y') as workday, timeworked /60/60, pkey, summary, worklogbody   from worklog l
#inner join jiraissue i
#on l.issueid = i.id
#where l.created between '2012-03-00' and '2012-03-29' and author = 'donat' 
#order by   l.created desc;

#jdbc:mysql://www.kettlerusa.com:3306/jiradb
#http://stackoverflow.com/questions/3609482/activerecord-talk-to-two-databases


class WorkLog < ActiveRecord::Base
  self.table_name  = "jiradb.worklog"
  establish_connection("jira")
  belongs_to :jira_issue, :class_name => "JiraIssue", :foreign_key => "issueid"
end
#ID	DECIMAL	18	0	Not Null	false	3	
#issueid	DECIMAL	18	0	Nullable	false	3	
#AUTHOR	VARCHAR	255	0	Nullable	false	12	
#grouplevel	VARCHAR	255	0	Nullable	false	12	
#rolelevel	DECIMAL	18	0	Nullable	false	3	
#worklogbody	VARCHAR	2147483647	0	Nullable	false	-1	
#CREATED	DATETIME	19	0	Nullable	false	93	
#UPDATEAUTHOR	VARCHAR	255	0	Nullable	false	12	
#UPDATED	DATETIME	19	0	Nullable	false	93	
#STARTDATE	DATETIME	19	0	Nullable	false	93	
#timeworked	DECIMAL	18	0	Nullable	false	3	
