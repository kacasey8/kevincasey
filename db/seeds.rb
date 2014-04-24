# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def initialize_projects
  projects = [
    {
      name: 'Hack FSM', 
      timeframe: '4/1/14 - 4/12/14', 
      blurb: 'Weeklong hackathon hosted by the Bancroft Library at Berkeley. Designed and built a web interface for the FSM Archive', 
      event_type: 'hackathon', repo: 'https://github.com/craighiller/hackfsm', 
      demo: 'http://fsm-archive.appspot.com', 
      description: "Web app written in python using the Bottle framework to do routing.  Our app won first place"
    },
    {
      name: 'Hall Of Time', 
      timeframe: '3/8/14 - 18 hrs', 
      blurb: "Blueprint's Social good hackathon. Built a timesheet app for the Lawrence Hall Of Science", 
      event_type: 'hackathon', 
      repo: 'https://github.com/Fortisque/halloftime', 
      demo: 'http://www.calblueprint.org/hackathons/save-the-day-code-for-good/hacks/hall-of-time', 
      description: 'TEMP'
    },
    {
      name: 'Food Me', 
      timeframe: '3/1/14 - 12 hrs', 
      blurb: "Hackers@Berkeley's HackJam. Built a when to meet specifically designed for food", 
      event_type: 'hackathon', 
      repo: 'https://github.com/Fortisque/halloftime', 
      demo: 'http://www.calblueprint.org/hackathons/save-the-day-code-for-good/hacks/hall-of-time', 
      description: 'TEMP'
    },
  ]

  projects.each do |project|
    Project.where(project).first_or_create
  end
end

Project.delete_all # clean up the database in case changes
initialize_projects