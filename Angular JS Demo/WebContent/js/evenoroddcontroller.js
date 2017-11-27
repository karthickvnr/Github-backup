/**
 * 
 */
app.controller('EvenOrOddController',function($scope)
{
$scope.evenorodd=function()
{
if($scope.num%2 == 0)
{
$scope.result = $scope.num + "is Even"
}
else
{
$scope.result = $scope.num + "is Odd"
}
}
})