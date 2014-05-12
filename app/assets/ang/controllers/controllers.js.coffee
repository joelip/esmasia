app = angular.module('esmTestPrepControllers', ['ngResource', 'ngCookies'])

app.controller 'StaticHomeCtrl', ['$scope', '$state', ($scope, $state) ->
	
	$scope.classPage = ->
		$state.go('classes')

]

app.controller 'ClassSelectionCtrl', ['$scope', ($scope) ->

	

]