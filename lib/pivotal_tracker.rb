require 'httparty'

class PivotalTracker
  include HTTParty

  base_uri 'https://www.pivotaltracker.com/services/v5'

  PermissionDenied = Class.new(Error)
end

PivotalTracker.autoload :Client,            'pivotal-tracker/client'
PivotalTracker.autoload :Story,             'pivotal-tracker/story'
PivotalTracker.autoload :Project,           'pivotal-tracker/project'
PivotalTracker.autoload :Account,           'pivotal-tracker/account'
PivotalTracker.autoload :AccountMembership, 'pivotal-tracker/account_membership'
PivotalTracker.autoload :ProjectWorkspace,  'pivotal-tracker/project_workspace'
PivotalTracker.autoload :Resource,          'pivotal-tracker/resource'
PivotalTracker.autoload :JiraIntegration,   'pivotal-tracker/jira_integration'
PivotalTracker.autoload :Me,                'pivotal-tracker/me'
PivotalTracker.autoload :MembershipSummary, 'pivotal-tracker/membership_summary'
PivotalTracker.autoload :GoogleAttachment,  'pivotal-tracker/google_attachment'
PivotalTracker.autoload :ProjectSnapshot,   'pivotal-tracker/project_snapshot'
