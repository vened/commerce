(function ()
{
	"use strict"

	angular.module("routes", []);


	function AppRoutes($routeProvider)
	{
		$routeProvider
		/**
		 * properties routes
		 */
			.when('/properties', {
				templateUrl: '/assets/admin/tmpl/properties/index.html',
				controller : 'PropertiesIndexCtrl',
				resolve    : {
					allProperties: function (PropertiesService)
					{
						return PropertiesService.all()
					}
				}
			})
			.when('/properties/add', {
				templateUrl: '/assets/admin/tmpl/properties/form.html',
				controller : 'PropertiesNewCtrl'
			})
			.when('/properties/:id', {
				templateUrl: '/assets/admin/tmpl/properties/show.html',
				controller : 'PropertiesShowCtrl',
				resolve    : {
					Property: function (PropertiesService, $route)
					{
						return PropertiesService.show($route.current.params.id)
					}
				}
			})
			.when('/properties/:id/edit', {
				templateUrl: '/assets/admin/tmpl/properties/form.html',
				controller : 'PropertiesEditCtrl',
				resolve    : {
					Property: function (PropertiesService, $route)
					{
						return PropertiesService.edit($route.current.params.id)
					}
				}
			})


		/**
		 * products routes
		 */
			.when('/galleries', {
				templateUrl: '/assets/admin/tmpl/galleries/index.html',
				controller : 'GalleriesIndexCtrl',
				resolve    : {
					allGalleries: function (GalleryService)
					{
						return GalleryService.all()
					}
				}
			})
			.when('/galleries/new', {
				templateUrl: '/assets/admin/tmpl/galleries/form.html',
				controller : 'GalleriesNewCtrl',
				resolve    : {
					newGallery: function (GalleryService)
					{
						return GalleryService.new()
					},
					pagesAll  : function (PageService)
					{
						return PageService.all()
					}
				}
			})
			.when('/galleries/:id/edit', {
				templateUrl: '/assets/admin/tmpl/galleries/form.html',
				controller : 'GalleriesEditCtrl',
				resolve    : {
					editGallery: function (GalleryService, $route)
					{
						return GalleryService.edit($route.current.params.id)
					},
					pagesAll      : function (PageService)
					{
						return PageService.all()
					}
				}
			})


		/**
		 * products routes
		 */
			.when('/products', {
				templateUrl: '/assets/admin/tmpl/products/index.html',
				controller : 'ProductsIndexCtrl',
				resolve    : {
					allProperties: function (ProductsService)
					{
						return ProductsService.all()
					}
				}
			})

			.otherwise({redirectTo: '/'});
	}


	AppRoutes.$inject = [
		'$routeProvider'
	];
	angular
		.module('routes')
		//		.constant('initUrl', 'http://localhost:3000/admin/')
		//		.constant('baseHref', '/base/')
		//		.value('$sniffer', { history: true })
		.config(AppRoutes);


}());
