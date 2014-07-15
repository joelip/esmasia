app = angular.module('esmTestPrepControllers', ['ngResource', 'ngCookies'])

app.controller 'StaticHomeCtrl', ['$scope', '$state', ($scope, $state) ->
  
  $scope.classPage = ->
    $state.go('classes')

]

app.controller 'ClassSelectionCtrl', ['$scope', '$state', 'Enrollment', ($scope, $state, Enrollment) ->

  $scope.currentTab = 'SAT'

  $scope.goHome = ->
    $state.go('home')

  $scope.showModal = (type) ->
    $scope.enrollment = {}
    $scope.enrollment.course_type = type
    $scope.showRegistration = true 

  $scope.selectTab = (tabName) ->
    $scope.currentTab = tabName

  $scope.submitEnrollment = ->
    Enrollment.createEnrollment($scope.enrollment)

]

app.controller 'MentorCtrl', ['$scope', '$sce', ($scope, $sce) ->

  $scope.goHome = ->
    $state.go('home')

  $scope.mentorSpotlight = 
    {
      name: 'Lawrence Anicete',
      photoUrl: "https://esmtest.s3.amazonaws.com/lawrence_anicete.jpeg",
      location: 'Sacramento, CA',
      bio: $sce.trustAsHtml("
        <p>
          Lawrence has been mentoring students of all ages and backgrounds for more than 10 years. He currently tutors students in 
          various subjects, including the SAT, ACT, Algebra I &II, Geometry, Pre-Calculus, Calculus I, II, & III, AP Statistics, 
          differential equations, chemistry, physics, and US History. Lawrence helps students use their own strengths and individual 
          learning styles to be maximize their success both in and out of the classroom.
        </p>
        <p>
          Upon graduating with high marks from Sacred Heart Cathedral Preparatory in San Francisco, Lawrence moved across 
          the country to attend Worcester Polytechnic Institute on an academic scholarship. He eventually decided that 
          New England winters were far too cold and finished his undergraduate studies at Rose-Hulman Institute of Technology 
          in Terre Haute, IN. He is currently making use of his BS in Mechanical Engineering working for Valspar as a plant 
          engineer. Lawrence is also concurrently working on his MBA at UC Davis.
        </p>
        <p>
          When he’s not working, you can find Lawrence playing basketball, tennis, climbing, or biking. He also likes to spend 
          time outdoors with his two rescue dogs, Marv and Echo.
        </p>")
    }

  $scope.setMentorSpotlight = (mentor) ->
    $scope.mentorSpotlight = mentor

  $scope.mentors = [
    {
      name: 'Lawrence Anicete',
      photoUrl: "https://esmtest.s3.amazonaws.com/lawrence_anicete.jpeg",
      location: 'Sacramento, CA',
      bio: $sce.trustAsHtml("
        <p>
          Lawrence has been mentoring students of all ages and backgrounds for more than 10 years. He currently tutors students in 
          various subjects, including the SAT, ACT, Algebra I &II, Geometry, Pre-Calculus, Calculus I, II, & III, AP Statistics, 
          differential equations, chemistry, physics, and US History. Lawrence helps students use their own strengths and individual 
          learning styles to be maximize their success both in and out of the classroom.
        </p>
        <p>
          Upon graduating with high marks from Sacred Heart Cathedral Preparatory in San Francisco, Lawrence moved across 
          the country to attend Worcester Polytechnic Institute on an academic scholarship. He eventually decided that 
          New England winters were far too cold and finished his undergraduate studies at Rose-Hulman Institute of Technology 
          in Terre Haute, IN. He is currently making use of his BS in Mechanical Engineering working for Valspar as a plant 
          engineer. Lawrence is also concurrently working on his MBA at UC Davis.
        </p>
        <p>
          When he’s not working, you can find Lawrence playing basketball, tennis, climbing, or biking. He also likes to spend 
          time outdoors with his two rescue dogs, Marv and Echo.
        </p>")
    },
    {
      name: 'John Sheffield',
      photoUrl: 'http://esmtest.s3.amazonaws.com/john_sheffield.jpg',
      location: 'San Francisco, CA',
      bio: $sce.trustAsHtml('
        <p>
          Hailing from the gray skies of Portland, John graduated from Yale University in 2010 with a BA in political 
          science. A college football player, John was nationally recognized for his achievements both on the field 
          and in the classroom.
        </p>
        <p>
          After brief stints interning in the US Senate and playing professional football in Europe, John brought his
          passion for educating students to ESM in 2011. He has worked with students in English, Spanish, history, 
          algebra, geometry, pre­calculus and the SAT and ACT. In addition to academic assistance, John counsels 
          students to find the right fit college and helps them through every step of the admissions process.
        </p>
        <p>
          In 2012 John began managing ESM operations in the Bay Area. Now, as the Managing Director of Tutoring 
          and Test Prep, John oversees all domestic academic mentors and ensures quality service to clients. 
          As part of his responsibilities, he connects with parents and students about their experiences with 
          ESM and seeks out further tutoring and test prep opportunities.
        </p>')
    },
    {
      name: 'Adam Allouche',
      photoUrl: 'http://esmtest.s3.amazonaws.com/adam_allouche.jpg',
      location: 'San Francisco, CA',
      bio: $sce.trustAsHtml("
        <p>
          Adam had always dreamed of becoming a professional soccer player, but when the debilitating curse of genetics 
          left him bereft of skill or speed, he decided to focus instead on his education. Adam took nearly every AP 
          he could in high school and matriculated to Yale. Undecided on a major, Adam took an exceptionally varied course 
          load before settling on American History. Even though his indecisiveness greatly stressed his parents, it has 
          helped him become an extremely well­-rounded tutor.
        </p>
        <p>
          He currently tutors students in the San Francisco Bay Area in a wide range of subjects, including the SAT,
          ACT, SSAT, GMAT, LSAT, US history, world history, algebra, geometry, trigonometry, calculus, chemistry, 
          physics, biology, and statistics.
        </p>
        <p>
          As a Philadelphia native and Arsenal fan, Adam balances his favorite teams' perpetual disappointments by focusing on
          his students' successes. Adam also trains incoming ESM academic mentors and works to develop SAT math curriculum for Versal, 
          a technology based education start­up.
        </p>")
    },
    {
      name: 'Elena Coupal',
      photoUrl: undefined,
      location: 'Sacramento, CA',
      bio: $sce.trustAsHtml("
        <p>
          After graduating from St. Francis High School in Sacramento, CA summa cum laude, Elena attended UC San Diego, where she majored in 
          biochemistry/chemistry and minored in literature/writing.
        </p>
        <p>
          With diverse academic interests, Elena held leadership positions at UCSD in several organizations, peer tutored, became an 
          apprentice teacher, performed in a play, completed two research projects, and was published in The Journal of Geophysical 
          Research: Atmospheres.
        </p>
        <p>
          Elena has over eight years of tutoring experience and hopes to help her students achieve their academic goals and discover a 
          subject (or subjects) about which they are passionate. She plans to attend start work on a master’s degree in genetic counseling 
          the fall of 2014, and in her free time enjoys swimming, reading voraciously, and volunteering.
        </p>")
    },
    {
      name: 'Ryan Jang',
      photoUrl: undefined,
      location: 'Sacramento, CA',
      bio: $sce.trustAsHtml("
          <p>
            Ryan graduated from the University of California, San Diego, with a degree in biology.
          </p>
          <p>
            He has always aspired to enter a career in which he can make a difference in the lives of those he works with. While preparing for
            graduate school, Ryan realized that teaching others strategies and better test ­taking techniques was rewarding not just for the 
            students but also himself. He understands that students learn differently with unique strengths and goals and works with them so 
            they can maximize their potential in a fun and engaging way.
          </p>
          <p>
            He currently tutors Sacramento­ area students in the SAT, ACT, algebra, geometry, trigonometry, calculus, chemistry, physics, biology,
            and statistics. Ryan has a passion for helping others and is currently working towards a career in dentistry. In his spare time, he 
            enjoys playing soccer, hiking, and watching his favorite sports.
          </p>
        ")
    },
    {
      name: 'Nick Calvitti',
      photoUrl: 'https://esmtest.s3.amazonaws.com/nick_calvitti.jpeg',
      location: 'Sacramento, CA',
      bio: $sce.trustAsHtml("
          <p>
            Nicholas Calvitti is a Sacramento native and a Jesuit High School graduate. He studied civil engineering at Santa Clara University
            and finished near the top of his class.
          </p>
          <p>
            After graduation Nick returned to Sacramento and has tutored hundreds of students in algebra, geometry, trigonometry, statistics, 
            calculus, chemistry, physics, and the SAT and ACT. Last spring Nick spent four months helping students at ESM’s Tokyo office.
          </p>
          <p>
            In his free time, Nick enjoys playing soccer, playing pool and running. Although he loves being active, he keeps his schedule 
            flexible to accommodate the busy and frequently changing schedules of his students.
          </p>
          <p>
            His experience working with so many students has helped him learn how to make his teaching style as flexible as his schedule. 
            Every student has different abilities and learning styles and Nick has been successful helping many students improve their 
            competency in math and science.
          </p>
        ")
    }
  ]

]

app.controller 'PaymentCtrl', ['$scope', 'StripeCard', '$rootScope', ($scope,
  StripeCard, $rootScope) ->

  $scope.date = {}
  $scope.customer = {}

  $scope.submitCard = ->
    $rootScope.$broadcast('processing')
    $scope.customer.referred_by = $scope.referredBy
    StripeCard.createPayment($scope.customer, $scope.date)

]