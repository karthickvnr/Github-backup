/**
 * UserController
 */

app.controller('UserController',function($scope,UserService,$location,$rootScope,$cookieStore)
		{
	//only for edit,this statement will get executed
	//it will not get executed for registration
	if($rootScope.currentUser!=undefined) //fetch user details
		{
		UserService.getUser().then(function(response)
		{
			$scope.user=response.data  //User object
		},function(response) { //401,500		
				delete $rootScope.currentUser;
				$cookieStore.remove('currentUser')
				if(response.status==401){
					$location.path('/login')	
				}							
		})
		}
	
	$scope.registerUser=function() //2
	{
		console.log($scope.user)
		UserService.registerUser($scope.user)  //3
		.then(function(response)
		{
		$scope.msg="Registered Successfully.. Please Login"
		$location.path('/login')
		},function(response)
		{
			console.log(response.data)
			console.log(response.status)
			$scope.error=response.data    //ErrorClazz object in Json
		}) //9		
	}
	
	$scope.login=function()
	{
		UserService.login($scope.user).then(function(response){ //200 User
			$rootScope.currentUser=response.data
			$cookieStore.put('currentUser',response.data)
			$location.path('/home')
		},function(response){    //401,500.....
			if(response.status==401)
				{
				$scope.error=response.data //Error Clazz in JSON format
				$location.path('/login')
				}
		})
	}
	$scope.editUserProfile=function(){
		UserService.editUserProfile($scope.user).then(function(response){
		alert('Updated Successfully')
		$location.path('/home')
		},function(response){
		if(response.status==401){
		$location.path('/login')}
		if(response.status==500){
		$scope.error=response.data
		$location.path('/editprofile')
		}
		})
		}
})