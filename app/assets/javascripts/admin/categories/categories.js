(function ()
{
	"use strict"

	var categories = angular.module("categories", []);

	categories.factory('Category', [
		'$http',
		function ($http)
		{
			return{
				find  : function (id, locale)
				{
					return $http.get("/admin/categories/find/" + id);
				},
				create: function (obj)
				{
					return $http.post("/admin/categories", obj);
				},
				update: function (id, obj)
				{
					return $http.put("/admin/categories/" + id, obj);
				}
			}
		}
	]);

	categories.controller('CategoriesFormCtrl', function ($scope, $location, Category)
	{
		$scope.obj = {};
		$scope.obj.category = {};


		$scope.submit = function ()
		{
			Category.create($scope.obj).success(function (val)
			{
				if (val.error)
				{
					$scope.errors = val.error
				}
				if (val.success)
				{
					window.location.replace("/admin/categories");
				}
			})
		}

		$scope.update = function (id)
		{
			Category.update(id, $scope.obj).success(function (val)
			{
				if (val.error)
				{
					$scope.errors = val.error
				}
				if (val.success)
				{
					window.location.replace("/admin/categories");
				}
			})
		}


		$scope.findCategory = function (id)
		{
			Category.find(id).success(function (val)
			{
				$scope.obj = val
			})
		}


	});

}())


