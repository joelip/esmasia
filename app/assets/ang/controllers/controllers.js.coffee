app = angular.module('esmTestPrepControllers', ['ngResource', 'ngCookies'])

app.controller 'StaticHomeCtrl', ['$scope', '$state', ($scope, $state) ->
  
  $scope.classPage = ->
    $state.go('classes')

]

app.controller 'ClassSelectionCtrl', ['$scope', 'Enrollment', ($scope, Enrollment) ->

  $scope.submitEnrollment = ->
    Enrollment.createEnrollment($scope.enrollment)

]

app.controller 'PaymentCtrl', ['$scope', 'Stripe', '$rootScope', ($scope,
  Stripe, $rootScope) ->

  $scope.createPayment = ->
    $rootScope.$broadcast('processingPayment')
    Stripe.fauxPayment()

]