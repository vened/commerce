(function ()
{
	"use strict"

	angular.module('carouselControllers', []);

	function CarouselService($http)
	{
		return{
			find: function (id)
			{
				return $http.get("/pages/carousel/" + id)
			}
		}
	}


	function CarouselCtrl($scope, CarouselService)
	{
		$scope.CarouselFind = function(id){
			CarouselService.find(id).success(function(data){
				$scope.slides = data;
			})
		}
	}

	CarouselCtrl.$inject = [
		'$scope',
		'CarouselService'
	];
	CarouselService.$inject = ['$http'];
	angular
		.module('carouselControllers')
		.controller('CarouselCtrl', CarouselCtrl)
		.service('CarouselService', CarouselService);


}());