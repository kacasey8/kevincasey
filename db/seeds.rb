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
      name: 'Get Matched',
      timeframe: '7/9/14 - 7/10/14 (2 days)',
      blurb: 'First place in the Godaddy 2014 Intern Hackathon. Built a web app that allows small business to get matched up in the Tinder model',
      language: 'Ruby on Rails',
      event_type: 'hackathon', 
      repo: 'https://github.com/skleung/get-matched',
      demo: 'http://get-matched.herokuapp.com/',
      image_src: 'get-matched.png',
      description: "We used the Locu api in order to pull information about businesses and used a custom algorithm to match up the businesses.
              The idea being that we only match businesses if both the businesses hit accept on each other.  Search for businesses by filling in needs and search
              for customers so that both people can accept each other.  Have a custom chat system built in."
    },
    {
      name: 'Serendpity',
      timeframe: '5/3/14 - 5/4/14 (2 days)',
      blurb: 'Our entry for the Hackbright for good event! Built a web app that allows people to make wishes and fulfill them with the intent of charity donations fueling the system.',
      language: 'Python',
      event_type: 'hackathon', 
      repo: 'https://github.com/craighiller/serendipity',
      demo: 'http://hackserendipity.appspot.com/',
      image_src: 'serendipity.png',
      description: "We wanted this to be a cute app to encourage people to donate to charity and also help random strangers.  We struggled a lot on this because we
            rolled our own user authentication system (which is also completely insecure, sorry).  We managed to get out features of texting through twillio
            and fairly pleasing UI."
    },
    {
      name: 'Hack FSM',
      timeframe: '4/1/14 - 4/12/14 (12 days)',
      blurb: '1st place in a weeklong hackathon hosted by the Bancroft Library at Berkeley. Designed and built a web interface for the FSM Archive',
      language: 'Python',
      event_type: 'hackathon', 
      repo: 'https://github.com/craighiller/hackfsm',
      demo: 'http://fsm-archive.appspot.com',
      image_src: 'fsm.png',
      description: "We managed to provide a clean interface for
            researchers exploring the Free Speech Movement Archive.  We were a team of 3 programmers (myself included) and one humanist.
            One of the programmers and our humanist managed give us brilliant ideas for design and feature requests.  I mainly worked on
            parsing and sending requests to a web SOLR database."
    },
    {
      name: 'Hall Of Time',
      timeframe: '3/8/14 - 18 hrs',
      blurb: "Best Nonprofit in Blueprint's Social good hackathon. Built a timesheet app for the Lawrence Hall Of Science",
      language: 'Ruby on Rails',
      event_type: 'hackathon',
      repo: 'https://github.com/Fortisque/halloftime',
      demo: 'http://halloftime.herokuapp.com/',
      image_src: 'halloftime.png',
      description: 'This was a rails app, and I was the only one that knew rails beforehand so I handeled the controller and backend logic.
            Luckily my 3 other teammates were able to build and design a beautiful front-end on top of my database.  We added various features from just
            a basic database time logging including a dashboard that can log current tasks and a calendar view.'
    },
    {
      name: 'Food Me',
      timeframe: '3/1/14 - 12 hrs',
      blurb: "Hackers@Berkeley's HackJam. Built a when to meet with perks for food",
      language: 'Python',
      event_type: 'hackathon',
      repo: 'https://github.com/craighiller/foodme',
      demo: 'http://food-me.appspot.com',
      image_src: 'foodme.png',
      description: "This was a really basic app and our first attempt at a hackathon.  It was really fun to try to build something on our own.
              Features include logging into Facebook to get access to friends and linking the app to texting.  I worked on the backend and did
              some of the frontend for this."
    }
  ]

  school_projects = [
    {
      name: 'Photo Evidence Gallery',
      timeframe: 'Fall 2013',
      blurb: "Website developed for BAMRU designed to privately store photos",
      language: 'Ruby on Rails',
      event_type: 'school project',
      repo: 'https://github.com/cs169-2013/photo_evidence_gallery',
      demo: 'http://photoevidence.herokuapp.com',
      image_src: 'photoevidence.png',
      description: "This was my first experience building a web app, so it was exciting because none of us knew what we were doing. We were 
            a team of 6 and were connected to our client BAMRU (Bay Area Mountain Rescue Unit) through our CS169 class at Berkeley. Our client
            wanted secure photos in order to share potentially crime sensitive information to each other during a rescure operation. Over the 
            course of 4 iterations we developed various features including cropping, rotation and uploading photos to Flickr and Facebook.
            We used TDD and Agile, and during the project I worked all over the stack to make sure everything worked."
    }
  ]

  school_contests = [
    {
      name: 'Artificial Intelligence - Pacman Contest',
      timeframe: 'Spring 2014',
      blurb: "1st place winner in a contest of programming multi-agent competitive capture the flag (food pellet) game",
      language: 'Python',
      event_type: 'school contest',
      image_src: 'capture_the_flag.png',
      description: "There were 4 different releases to the contest, making the parameters increasingly difficult.
            The first part was a search problem, agents could not be killed, so the problem was a matter steps required to collect pellets.
            I used brute force randomized improvement with a backing of MST and clusting.  For the 3rd and 4th part we used a smart reflex agent
            and as a lookahead used a precomputed 'trap table' solved through dynamic programming to determine whether or not a 
            ghost could kill a pacman agent one on one in a given situation.  We managed to get first place in all but the 2nd release!"
    },
    {
      name: 'Machine Structures - Matrix Multiplication Contest',
      timeframe: 'Summer 2013',
      blurb: "1st place in a speed competition for multiplying (A * B = C) matrix using pthreads",
      language: 'C',
      event_type: 'school contest',
      image_src: 'matrix_multiplication.png',
      description: "Had the fastest algorithm among 140 students for multiplying matricies.  We used techniques including register/cache blocking, SSE instructions and
            multi-threading to get up to 70 GFlops.  The most interesting thing was that we realized a lot of the hard work was done computing edge cases (literally
            the edge of the matrix multiplication) because padding the matricies takes too much time and reusing the cache is much more difficult "
    },
    {
      name: 'Data Structures - Network Contest',
      timeframe: 'Spring 2013',
      blurb: "1st place winner for a contest of playing the game called Network (it's similar to checkers)",
      language: 'Java',
      event_type: 'school contest',
      image_src: 'network.png',
      description: "Used concepts of intermediate board evaluation, hash mapping, and depth 5 alpha-beta pruning to win a
            bracket based tournament in a class of 500.  My board evaluation was critical, and made sure to only favor positions
            closer to winning.  I saw the game as a simplified game of chess and was able to program a very strong bot to play the game."
    }
  ]

  personal = [
    {
      name: 'Community',
      timeframe: 'Summer 2014',
      blurb: "Built a web app designed to help assist roommates in splitting the cost of ingredients when cooking.",
      language: 'Ruby on Rails',
      event_type: 'personal projects',
      repo: "https://github.com/skleung/Community",
      demo: "http://community-app.herokuapp.com/",
      image_src: 'community.png',
      description: "My friend thought of the idea for this app and I designed most of the backend for this project.
            Nothing like this really exists currently.  We focus on splitting food cost so we can do it right: people
            attend meals on our site and we track how many times an ingredient is used so we can accurately gauge how
            much of the ingredient was used at each meal so we know the cost of the meal.  With a custom calendar to signup
            for meals and integration with Venmo we have a very real solution to help people that experience this."
    },
    {
      name: 'HearthstoneCounter',
      timeframe: 'Summer 2014',
      blurb: "Built a simple web app to record which decks counter which decks in Hearthstone",
      language: 'Ruby on Rails',
      event_type: 'personal projects',
      repo: "https://github.com/chungs1/hearthstone_counter",
      demo: "http://hearthstonecounter.herokuapp.com/",
      image_src: 'hearthstonecounter.png',
      description: "My friend, a buisness major thought of the idea to log the current meta game of the Blizzard
              card game called Hearthstone.  The admin can add decks, and specify the matchups as which deck counters the other.
              Nonadmins can explore the decks and give a thumbs up or thumbs down based on what they think."
    },
    {
      name: 'Irrational Mind',
      timeframe: 'January 2014',
      blurb: "Designed and built a simple app to convert decimal approximations of irrational numbers to approximate rational numbers. E.g. 0.392699 -> π/8.",
      language: 'Ruby on Rails',
      event_type: 'personal projects',
      repo: "github.com/Fortisque/irrational_mind",
      demo: "http://irrational-mind.herokuapp.com",
      image_src: 'irrationalmind.png',
      description: "I envisioned this app as a solution to the problem of finding eigenvectors of matricies.  When using an online
            caclulator for this it would always give you back the solution in the form of decimal values, but it was obviously more
            useful and intuitive to be able to see the result as a familar figure such as sqrt(5).  I used a brute force
            solution to solve the problem which clearly is not the most elegent solution but it worked for what I intended."
    },
    {
      name: 'Bluetooth Markers',
      timeframe: 'Spring 2013',
      blurb: "Designed and built an iPhone app that would add a marker to a map when Bluetooth connections were severed",
      language: 'Objective-C',
      event_type: 'personal projects',
      repo: "github.com/Fortisque/BluetoothMarkers",
      description: "My friend actually gave me the idea for this because he kept forgetting where he parked his car.
            The idea was that when you turn off your car to park it the bluetooth connection is dropped, thus your phone
            can automatically track where you stopped.  I managed to make it work for a faked bluetooth connection coming from
            my iPad, but I never really stablized it for use with actual cars (there was a lot of problems with the app backgrounding
            and finding singnals). So unfortunately the app was left in an unfinished state (and will likely remain that way)"
    }
  ]

  all_projects = hackathons + school_contests + personal + school_projects

  all_projects.each do |project|
    Project.where(project).first_or_create
  end
end

Project.delete_all # clean up the database in case changes
initialize_projects
