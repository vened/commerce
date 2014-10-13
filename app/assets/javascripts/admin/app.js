(function ()
{
	"use strict"

	angular.module("admin", [
		"ngResource",
	    "ngRoute",

	    // routes
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
