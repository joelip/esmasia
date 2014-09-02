app = angular.module('esmTestPrepControllers', ['ngResource', 'ngCookies'])

app.controller 'StaticHomeCtrl', ['$scope', '$state', ($scope, $state) ->
  
  $scope.classPage = ->
    $state.go('classes')

]

app.controller 'ClassSelectionCtrl', ['$scope', '$state', 'Enrollment', ($scope, $state, Enrollment) ->

  $scope.classes = [
    {
      school: "Yokohoma Int'l School",
      city: "Tokyo",
      classes: [
        {
          title: "6-Week SAT Course",
          dates: "September 1 - October 7",
          price:  "$950"
        },
        {
          title: "8-Week Hybrid SAT & ACT",
          dates: "October 13 - November 10 (no class Oct. 27)",
          price:  "$950"
        },
        {
          title: "SAT 5-Day Intensive Course",
          dates: "October 27 - October 31",
          price:  "$650"
        },
        {
          title: "ACT 5-Day Intensive Course",
          dates: "October 27 - October 31",
          price:  "$650"
        },
        {
          title: "PSAT 1-Day Seminar",
          dates: "October 6",
          price:  "$200"
        }
      ]
    },
    {
      school: "Saint Maur",
      city: "Tokyo",
      classes: [
        {
          title: "SAT Diagnostic",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "SAT 5-Day Intensive Course",
          dates: "October 20 - October 24",
          price:  "$650"
        }
      ]
    },
    {
      school: "Saint Mary's",
      city: "Tokyo",
      classes: [
        {
          title: "SAT Diagnostic Exam",
          dates: "September 6",
          price:  "FREE"
        },
        {
          title: "ACT Diagnostic Exam",
          dates: "September 6",
          price:  "FREE"
        },
        {
          title: "SAT 5-Day Intensive Course",
          dates: "October 22 - October 26 (no classes 10/25)",
          price:  "$750"
        },
        {
          title: "ACT 5-Day Intensive Course",
          dates: "October 22 - October 26 (no classes 10/25)",
          price:  "$750"
        },
        {
          title: "5-week SAT Course",
          dates: "TBD",
          price:  "$750"
        }
      ]
    },
    {
      school: "Seisen",
      city: "Tokyo",
      classes: [
        {
          title: "SAT Diagnostic Exam",
          dates: "September 6",
          price: "FREE"
        },
        {
          title: "ACT Diagnostic Exam",
          dates: "TBD",
          price: "FREE"
        },
        {
          title: "SAT 5-Day Intensive Course",
          dates: "October 22 - 26",
          price: "$650"
        },
        {
          title: "ACT 5-Day Intensive Course",
          dates: "October 22 - 26",
          price: "$650"
        },
        {
          title: "8-week SAT Course",
          dates: "TBD",
          price: "$950"
        }
      ]
    },
    {
      school: "Tokyo American Club",
      city: "Tokyo",
      classes: [
        {
          title: "SAT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "ACT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "SSAT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "1-Day SAT Cram",
          dates: "TBD",
          price:  "$150"
        },
        {
          title: "1-Day ACT Cram",
          dates: "TBD",
          price:  "$150"
        },
        {
          title: "SAT 5-Day Intensive Course",
          dates: "October 11 - 14",
          price: "$500"
        },
        {
          title: "ACT 5-Day Intensive Course",
          dates: "October 11 - 14",
          price: "$500"
        },
        {
          title: "SSAT 5-Day Intensive Course",
          dates: "October 11 - 14",
          price: "$500"
        },
        {
          title: "8-week Hybrid SAT & ACT Course",
          dates: "TBD",
          price: "$750"
        },        
        {
          title: "6-week SAT Course",
          dates: "TBD",
          price: "$950"
        }
      ]
    },
    {
      school: "Singapore American School",
      city: "Singapore",
      classes: [
        {
          title: "SAT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "ACT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "SSAT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "1-Day PSAT Cram",
          dates: "TBD",
          price:  "SGD $250"
        },
        {
          title: "1-Day ACT Cram",
          dates: "TBD",
          price:  "SGD $250"
        },
        {
          title: "SAT 5-Day Intensive Course",
          dates: "October 11 - 14",
          price: "SGD $1150"
        },
        {
          title: "ACT 5-Day Intensive Course",
          dates: "October 11 - 14",
          price: "SGD $1150"
        },
        {
          title: "SSAT 5-Day Intensive Course",
          dates: "October 11 - 14",
          price: "SGD $1150"
        },
        {
          title: "8-week Hybrid SAT & ACT Course",
          dates: "TBD",
          price: "SGD $1350"
        }
      ]
    },
    {
      school: "British Manila School",
      city: "Manila",
      classes: [
        {
          title: "SAT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "4-week SAT Course",
          dates: "TBD",
          price: "TBD"
        }
      ]
    },
    {
      school: "Int'l School Manila",
      city: "Manila",
      classes: [
        {
          title: "SAT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        },
        {
          title: "ACT Diagnostic Exam",
          dates: "TBD",
          price:  "FREE"
        }
      ]
    }
  ]

  $scope.selected = $scope.classes[0]

  $scope.selectSchool = (i) ->
    $scope.selected = $scope.classes[i]

  $scope.goHome = ->
    $state.go('home')

  $scope.triggerRegistration = ->
    $scope.enrollment = {}
    # $scope.enrollment.course_type = type
    $scope.showRegistration = true 

  $scope.selectTab = (tabName) ->
    $scope.currentTab = tabName

  $scope.submitEnrollment = ->
    Enrollment.createEnrollment($scope.enrollment)

]

app.controller 'MentorCtrl', ['$scope', '$sce', ($scope, $sce) ->

  $scope.goHome = ->
    $state.go('home')

  $scope.mentors = [
    {
      name: 'Kevin Pope',
      photoUrl: "https://esmtest.s3.amazonaws.com/lawrence_anicete.jpeg",
      bio: $sce.trustAsHtml("
        <p>
          Kevin Pope graduated from Yale University with a bachelor’s degree in Economics. At Yale, Kevin was a four-year 
          member of the varsity soccer team and leading scorer as a sophomore. He helped head Bulldog Buddies which 
          connects Yale athletes to students from local schools needing extra help with college admissions. Kevin was 
          selected to the inaugural class of the Kiphuth Leadership Academy, a program that trains Yale student-athletes 
          on the principles of leadership. Bringing these experiences together, Kevin wrote the handbook, “7 Steps to 
          Becoming a Collegiate-Athlete” which serves as ESM’s athletic handbook.
        </p>
        <p>
          Upon graduation, Kevin had a brief stint in the world of finance before joining ESM Group in their head office 
          in San Francisco where he helped expand the West coast operations and launch ESM’s Academic Tutoring & Test Prep division.
        </p>
        <p>
          In 2012, Kevin made the move to Tokyo to open ESM’s first Asia office and service the growing number of ESM 
          clients throughout Japan, Hong Kong, Manila and Singapore. Throughout his time at ESM, he has helped hundreds 
          of students find their “right fit” colleges
        </p>")
    },
    {
      name: 'Matt Segasture',
      photoUrl: 'http://esmtest.s3.amazonaws.com/john_sheffield.jpg',
      bio: $sce.trustAsHtml("
        <p>
          Matt Segasture graduated from the George Washington University in 2009 majoring in History and earning 
          a minor in Japanese Language. While pursuing his undergraduate degree, he spent one year abroad at Sophia 
          University in central Tokyo. He has spent most of his post-collegiate years in the field of education 
          teaching students ranging in age from three to eighteen. During high school he took eight different 
          advanced placement courses in a variety of subjects including biology, English literature, Spanish, 
          and U.S. history, entering university with over 20 credit hours. He loves learning languages, 
          having already mastered Spanish and Japanese, and traveling. In August of 2012, Matt passed the Japanese 
          Language Proficiency Test for the level N1, certifying his fluency. 
        </p>
        <p>
          Matt came on full time with ESM in 2013, having previously done part-time work, and is now the Managing 
          Director of the Japan Office.  He loves the humanities and tries to share his passions with all the 
          students he works with.  For Matt, helping a student find his or her individual voice in writing makes 
          it all worth it.
        </p>")
    },
    {
      name: 'Wesley Waterman',
      photoUrl: 'http://esmtest.s3.amazonaws.com/adam_allouche.jpg',
      bio: $sce.trustAsHtml("
        <p>
          Wes Waterman graduated from Amherst College with a Bachelor of Arts in Political Science and with a concentration in Mathematics. Wes was captain of the National Champion Men’s Tennis team and also an All-American. Wes has always been a hard worker on and off the court and is dedicated to helping students reach their full potential and get into the best “fit” University.
        </p>
        <p>
          After graduating Amherst, Wes moved to Tokyo where he briefly worked with a leading Asia Pacific IT Consulting firm before joining the ESM Asia team full time. Wes now manages and coordinates all classes run out of ESM Japan and mentors students through the college process, standardized test prep, the Athletic recruiting process, and various High School and AP Courses.
        </p>")
    },
    {
      name: 'Matt Wright',
      photoUrl: undefined,
      bio: $sce.trustAsHtml("
        <p>
          Matt Wright graduated from Cornell University with bachelor degrees in Government and Asian Studies. While at Cornell, he undertook the FALCON Chinese and Japanese intensive language programs where he studied each language for one calendar year and also studied abroad in both China and Japan. After graduating, Matt participated in the Japan Exchange and Teaching (JET) Program where he taught English to a wide range of students from the pre-school to junior high level in rural Wakayama, Japan. During his three years in the program, Matt created a preparatory program at his local junior high school for a national English examination and was active in promoting international exchange programs for his students.
        </p>
        <p>
          Upon finishing, Matt enrolled in Vanderbilt University’s Peabody School of Education where he completed a Master of Education degree in Higher Education Administration with a focus on international higher education. Throughout his tenure at Vanderbilt, Matt worked at the Office of International Students & Scholars, the English Language Center, and U.S.-China Center for Education and Culture in Guangzhou, China. Furthermore, he completed an internship in the Press and Cultural Sections of the Embassy of the United States in Tokyo where he worked on the front lines of promoting higher education exchanges between Japan and the U.S. Having now joined ESM as an Academic Mentor, Matt specializes in the humanities and tutoring local Japanese students. He will help lead ESM’s expansion into the local Japanese mentoring market and continue to build strong relationships between Japan and the world. 
        </p>")
    },
    {
      name: 'Tyler Henry Hung',
      photoUrl: undefined,
      bio: $sce.trustAsHtml("
          <p>
            Tyler graduated from Cambridge (Christ’s College) with a B.A. (Honours) in Law and Natural Sciences, before embarking on further graduate legal studies in London.  Prior to his Bachelor’s, he earned and declined offers to study at medical schools in the UK. 
          </p>
          <p>
            At Cambridge, he played intercollegiate basketball during two of his college’s most successful seasons, and started an urban coaching club to develop those keen to play college-level basketball.  He strongly believes in nurturing leadership and interpersonal skills from a young age, and used his club to encourage others to grow.
          </p>
          <p>
            After graduate legal studies, during his tenure in the UK Diplomatic Service leadership track, Tyler served his country in counter-terrorism matters, Middle East relations, Olympics 2012 preparation and security, finishing in commercial diplomacy, where he led on fostering UK relationships with key corporate contacts all across the world.  A natural mentor, ex-sports coach and experienced leader, Tyler has in varying forms since 2006 always striven to coax the best out of aspiring, young students.  
          </p>
        ")
    }
  ]

  $scope.mentorSpotlight = $scope.mentors[0]

  $scope.setMentorSpotlight = (i) ->
    $scope.mentorSpotlight = $scope.mentors[i]


]