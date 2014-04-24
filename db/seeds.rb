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
      blurb: '1st place in a weeklong hackathon hosted by the Bancroft Library at Berkeley. Designed and built a web interface for the FSM Archive.  Python Bottle.',
      event_type: 'hackathon', repo: 'https://github.com/craighiller/hackfsm',
      demo: 'http://fsm-archive.appspot.com',
      description: "Web app written in python using the Bottle framework to do routing. We managed to provide a clean interface for
            researchers exploring the Free Speech Movement Archive.  We were a team of 3 programmers (myself included) and one humanist.
            One of the programmers and our humanist managed give us brilliant ideas for design and feature requests.  I mainly worked on
            parsing and sending requests to a web SOLR database."
    },
    {
      name: 'Hall Of Time',
      timeframe: '3/8/14 - 18 hrs',
      blurb: "Best Nonprofit in Blueprint's Social good hackathon. Built a timesheet app for the Lawrence Hall Of Science. Ruby on Rails",
      event_type: 'hackathon',
      repo: 'https://github.com/Fortisque/halloftime',
      demo: 'http://www.calblueprint.org/hackathons/save-the-day-code-for-good/hacks/hall-of-time',
      description: 'This was a rails app, and I was the only one that knew rails beforehand so I handeled the controller and backend logic.
            Luckily my teammates were able to build and design a beautiful front-end on top of my database.  We added various features from just
            a basic database time logging including a dashboard that can log current tasks and a calendar view.'
    },
    {
      name: 'Food Me',
      timeframe: '3/1/14 - 12 hrs',
      blurb: "Hackers@Berkeley's HackJam. Built a when to meet with perks for food.  Python Google App Enging",
      event_type: 'hackathon',
      repo: 'https://github.com/craighiller/foodme',
      demo: 'http://food-me.appspot.com',
      description: "This was a really basic app and our first attempt at a hackathon.  We didn't win but it was really fun to try to build something!
              Features include logging into Facebook to get access to friends and linking the app to texting.  I worked on the backend and did
              some of the frontend for this."
    },
    {
      name: 'CS188 Pacman Contest',
      timeframe: 'Spring 2014',
      blurb: "1st place winner in a contest of programming multi-agent competitive capture the flag",
      event_type: 'school contest',
      description: "There were 4 different releases to the contest, making the parameters increasingly difficult.
            The first part was a search problem, agents could not be killed, so the problem was a matter steps required to collect pellets.
            I used brute force randomized improvement with a backing of MST and clusting."
    },
    {
      name: 'CS61C Matrix Multiplication',
      timeframe: 'Summer 2013',
      blurb: "1st place in a speed competition for multiplying (A * B = C) matrix using pthreads",
      event_type: 'school contest',
      description: "Had the fastest algorithm among 140 students using register/cache blocking, SSE instructions and
            parallel processing to distribute the load over 16 logical cores"
    },
    {
      name: 'CS61B Network Contest',
      timeframe: 'Spring 2013',
      blurb: "1st place winner for a contest of playing the game called Network (it's similar to checkers)",
      event_type: 'school contest',
      description: "Used concepts of intermediate board evaluation, hash mapping, and depth 5 alpha-beta pruning to win a
            bracket based tournament in a class of 500.  My board evaluation was critical, and made sure to only favor positions
            closer to winning.  I saw the game as a simplified game of chess and was able to program a very strong player."
    }
  ]

  projects.each do |project|
    Project.where(project).first_or_create
  end
end

Project.delete_all # clean up the database in case changes
initialize_projects