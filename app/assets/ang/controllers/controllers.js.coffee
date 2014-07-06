app = angular.module('esmTestPrepControllers', ['ngResource', 'ngCookies'])

app.controller 'StaticHomeCtrl', ['$scope', '$state', ($scope, $state) ->
  
  $scope.classPage = ->
    $state.go('classes')

]

app.controller 'ClassSelectionCtrl', ['$scope', 'Enrollment', ($scope, Enrollment) ->

  $scope.submitEnrollment = ->
    Enrollment.createEnrollment($scope.enrollment)

]

app.controller 'MentorCtrl', ['$scope', '$sce', ($scope, $sce) ->

  $scope.mentorSpotlight = 
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
    }

  $scope.setMentorSpotlight = (mentor) ->
    $scope.mentorSpotlight = mentor

  $scope.mentors = [
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
      name: 'Dan Feinstat',
      photoUrl: undefined,
      location: 'Sacramento, CA',
      bio: $sce.trustAsHtml("
        <p>Daniel is a Sacramento native who graduated from Rio Americano High School in 2006. He then moved south along the coast to
          the University of Southern California, where he earned a BA in clinical psychology. During his time at USC he was the social and 
          philanthropic chair of the Delta Kappa Alpha film fraternity and also a volunteer in public elementary schools, where he worked 
          with ESL students. After taking anatomy and physiology at the USC med school, Daniel decided to pursue a career physical medicine and 
          rehabilitation. He spent a summer working in a research lab studying the autoimmune disease myasthenia gravis. He interned in the 
          emergency room of Sutter General Hospital in Sacramento and spent a year working as a medical aide in post surgical recovery. Daniel 
          is currently taking post-baccalaureate science courses to prepare for medical school.'
        </p>
        <p>
          Daniel has always enjoyed working with students and helping them to achieve their goals. He finds it extremely satisfying to see people
          work hard and succeed, which is part of what draws him to rehabilitative medicine. In his free time, Daniel enjoys skiing in Tahoe,
          playing tennis, and watching the HBO show Game of Thrones.
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
    StripeCard.createPayment($scope.customer, $scope.date)

]