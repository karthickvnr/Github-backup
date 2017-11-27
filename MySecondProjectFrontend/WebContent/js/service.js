/**
 * PersonService to make server side calls
 */

app.factory('PersonService', function($http)
		{
			var personService = {}
			personService.getAllPersons = function()		
		{
			//call server side code by URL
			return $http.get("http://localhost:8085/MySecondProjectMiddleware/getallpersons")	
		
		}
			personService.savePerson = function(person)
		{
				
				return $http.get("http://localhost:8085/MySecondProjectMiddleware/saveperson",person)	
		}	
			return personService;
		
		})