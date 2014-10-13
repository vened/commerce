(function ()
{
	"use strict"

	angular.module('productsServices', [])


	function ProductsService($http)
	{
		return{
			find            : function (id)
			{
				return $http.get("/admin/products/find/" + id);
			},
			create          : function (obj)
			{
				return $http.post("/admin/products", obj);
			},
			update          : function (id, obj)
			{
				return $http.put("/admin/products/" + id, obj);
			},
			setPropertyValue: function (product_id, property_id, value_id, obj)
			{
				return $http.post("/admin/products/" + product_id + "/property/" + property_id + "/value/" + value_id, obj);
			}
		}
	}

	ProductsService.$inject = ['$http'];
	angular
		.module('productsServices')
		.service('ProductsService', ProductsService);


})()