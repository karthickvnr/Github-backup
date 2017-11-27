/**
 * 
 */
app.controller('MessageController', function($scope)
{
	$scope.message= "Welcome to my Demo"
	$scope.user= "{{1+2}}"
	$scope.IntegerValue="258"
	$scope.FloatValue="98.5"
	$scope.Register={'Number':101, 'Name':'Karthick', 'Value':15000}
	$scope.Employees=[{'empno':500, 'empname':'Karthick', 'dept':'Developer'},
					  {'empno':501, 'empname':'Nithya', 'dept':'Researcher'},
					  {'empno':502, 'empname':'Manjula', 'dept':'Senior'}]
					 
}
)