# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def initialize_projects
  projects = [
    {name: 'HackFSM', timeframe: '4/1/14 - 4/12/14', blurb: 'Weeklong hackathon hosted by the Bancroft Library at Berkeley.', event_type: 'hackathon', repo: 'https://github.com/craighiller/hackfsm', demo: 'http://fsm-archive.appspot.com', description: 'TEMP'}
  ]

  projects.each do |project|
    Project.where(project).first_or_create
  end
end

initialize_projects