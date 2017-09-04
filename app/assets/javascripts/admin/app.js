//= require admin/routes
//= require admin/categories/categories
//= require admin/pages/pages

// services
//= require_directory ./services

// component properties
//= require_directory ./components/properties
//= require_directory ./components/products
//= require_directory ./components/alert
//= require_directory ./components/galleries

// directives
//= require admin/uploader/uploader.directives


(function ()
{
	"use strict"

	angular.module("admin", [
		"ngResource",
		"ngRoute",

		// routes
		"constants",
		"routes",

		// controllers
		"alertControllers",
		"propertiesControllers",
		"productsControllers",
		"galleriesControllers",
		"categories",
		"pages",

		// directives
		"uploader.directives",

		// services
		"uploader.services",
		"propertiesServices",
		"productsServices",
		"galleriesServices",
		"pagesServices"

	])


}());
