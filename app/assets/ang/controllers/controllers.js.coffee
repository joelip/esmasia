app = angular.module('esmTestPrepControllers', ['ngResource', 'ngCookies'])

app.controller 'StaticHomeCtrl', ['$scope', '$state', ($scope, $state) ->
  
  $scope.classPage = ->
    $state.go('classes')

]

app.controller 'ClassSelectionCtrl', ['$scope', 'Enrollment', ($scope, Enrollment) ->

  $scope.submitEnrollment = ->
    Enrollment.createEnrollment($scope.enrollment)

]

app.controller 'PaymentCtrl', ['$scope', 'StripeCard', '$rootScope', ($scope,
  StripeCard, $rootScope) ->

  $scope.date = {}
  $scope.customer = {}

  $scope.submitCard = ->
    $rootScope.$broadcast('processing')
    StripeCard.createPayment($scope.customer, $scope.date)

]