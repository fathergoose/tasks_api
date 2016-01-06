(function() {
  "use strict";

  angular.module("app").controller("tasksCtl", function($scope, $http) {
    $scope.message = "HELLO!!";// the $scope.whatever thing is called a model so it can be used in the html
                               // can also do $scope.somevar = function(arg1, arg2) to make functions


    $scope.setup = function() {
      console.log("hello");
      $http.get('api/v1/tasks.json').then(function(response) {
        $scope.tasks = response.data;
        console.log($scope.tasks);
      })
      
    };
    
  
  });
})();
