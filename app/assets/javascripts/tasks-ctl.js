(function() {
  "use strict";

  angular.module("app").controller("tasksCtl", function($scope) {
    $scope.message = "HELLO!!";// the $scope.whatever thing is called a model so it can be used in the html
                               // can also do $scope.somevar = function(arg1, arg2) to make functions
    $scope.tasks = [
    {
      "key": "value",
    }
    ];
  });
})();
