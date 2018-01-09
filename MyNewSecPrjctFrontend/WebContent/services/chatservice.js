/**
 * ChatService
 */
app.factory('socket',function($rootScope){
	var socket=new sockJS("/MyNewSecPrjctBackend/chatmodule")
	var stompClient=Stomp.over(socket)
	stompClient.connect('','',function(frame){
		$rootScope.$broadcast('sockconnected',frame)
	});
	return{
		stompClient:stompClient
	}
})