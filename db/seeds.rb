# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def initialize_projects
  hackathons = [
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
            Luckily my 3 other teammates were able to build and design a beautiful front-end on top of my database.  We added various features from just
            a basic database time logging including a dashboard that can log current tasks and a calendar view.'
    },
    {
      name: 'Food Me',
      timeframe: '3/1/14 - 12 hrs',
      blurb: "Hackers@Berkeley's HackJam. Built a when to meet with perks for food. Python Google App Enging",
      event_type: 'hackathon',
      repo: 'https://github.com/craighiller/foodme',
      demo: 'http://food-me.appspot.com',
      description: "This was a really basic app and our first attempt at a hackathon.  It was really fun to try to build something on our own.
              Features include logging into Facebook to get access to friends and linking the app to texting.  I worked on the backend and did
              some of the frontend for this."
    }
  ]

  school_projects = [
    {
      name: 'Photo Evidence Gallery',
      timeframe: 'Fall 2013',
      blurb: "Ruby on Rails website developed for BAMRU designed to privately store photos"
      event_type: 'school project',
      repo: 'https://github.com/cs169-2013/photo_evidence_gallery',
      demo: 'photoevidence.herokuapp.com'
      description: "This was my first experience building a web app, so it was exciting because none of us knew what we were doing. We were 
            a team of 6 and were connected to our client BAMRU (Bay Area Mountain Rescue Unit) through our CS169 class at Berkeley. Our client
            wanted secure photos in order to share potentially crime sensitive information to each other during a rescure operation. Over the 
            course of 4 iterations we developed various features including cropping, rotation and uploading photos to Flickr and Facebook.
            We used TDD and Agile, and during the project I worked all over the stack to make sure everything worked."
    }
  ]

  school_contests = [
    {
      name: 'CS188 Pacman Contest',
      timeframe: 'Spring 2014',
      blurb: "1st place winner in a contest of programming multi-agent competitive capture the flag (food pellet) game",
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

  personal = [
    {
      name: 'Irrational Mind',
      timeframe: 'January 2014',
      blurb: "Designed and built a simple Ruby On Rails app to convert decimal approximations of irrational numbers to approximate rational numbers. E.g. 0.392699 -> π/8.",
      event_type: 'personal projects',
      repo: "github.com/Fortisque/irrational_mind",
      demo: "http://irrational-mind.herokuapp.com",
      description: "I envisioned this app as a solution to the problem of finding eigenvectors of matricies.  When using an online
            caclulator for this it would always give you back the solution in the form of decimal values, but it was obviously more
            useful and intuitive to be able to see the result as a familar figure such as sqrt(5).  I used a brute force
            solution to solve the problem which clearly is not the most elegent solution but it worked for what I intended."
    },
    {
      name: 'Bluetooth Markers',
      timeframe: 'Spring 2013',
      blurb: "Designed and built an iPhone app that would add a marker to a map when Bluetooth connections were severed",
      event_type: 'personal projects',
      repo: "github.com/Fortisque/BluetoothMarkers",
      description: "My friend actually gave me the idea for this because he kept forgetting where he parked his car.
            The idea was that when you turn off your car to park it the bluetooth connection is dropped, thus your phone
            can automatically track where you stopped.  I managed to make it work for a faked bluetooth connection coming from
            my iPad, but I never really stablized it for use with actual cars (there was a lot of problems with the app backgrounding
            and finding singnals). So unfortunately the app was left in an unfinished state (and will likely remain that way)"
    }
  ]

  all_projects = hackathons + school_contests +  personal

  all_projects.each do |project|
    Project.where(project).first_or_create
  end
end

Project.delete_all # clean up the database in case changes
initialize_projects
