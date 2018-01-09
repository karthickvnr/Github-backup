/**
 * BlogPostDetailsController
 */
app.controller('BlogPostDetailsController',function($scope,$location,$routeParams,BlogService){
var id=$routeParams.id
$scope.isRejected=false;
$scope.showComment=false;

BlogService.getBlogPost(id).then(function(response){
$scope.blogPost=response.data
},function(response){
if(response.status==401){
	$location.path('/login')	
}		
})

BlogService.userLikes(id).then (function(response){
	if(response.data=='')
	$scope.liked=false
	else
		$scope.liked=true
		alert($scope.liked)
	},function(response){
		if(response.status==401){
			$location.path('/login')
		}
	})

$scope.showRejectionTxt=function(val){
	$scope.isRejected=val
}

/*$scope.addComment=function(){
	console.log($scope.blogComment)
	$scope.blogComment.blogPost=$scope.blogPost
	consolelog($scope.blogComment)
	BlogPostService.addComment($scope.blogComment).then(function(response){
		console.log(response.data)
		$scope.blogComment.commentTxt=''
			getBlogComments();
	},function(response){
		if(response.status==401)
		$location.path('/login')
		else
		$locaation.path('/getblogbyid/'+id)		
	})
}*/

function getBlogComments(){
	BlogPostService.getBlogComments(id).then(function(response){
	$scope.blogComments=response.data	
	},function(response){
		if(response.status==401)
		$location.path('/login')
	})
}

$scope.updateBlogPost=function(){
	BlogService.updateBlogPost($scope.blogPost,$scope.rejectionReason).then (function(response){
	$location.path('/getblogs')
	},function(response){
		if(response.status==401){
			$location.path=('/login')
		}
		if(response.status==500){
			alert(response.data)
			$scope.error=response.data	
	}		
	})
}	

$scope.updateLikes=function(){
	BlogService.updateLikes($scope.blogPost).then(function(response){
	$scope.blogPost=response.data;
	$scope.liked=!$scope.liked;	
	},function(response){
	if(response.status==401){
		$location.path('/login')
	}
	})
}

$scope.addComment=function(){
	if($scope.commentText==undefined){
		alert('Please Enter Comment')
	}
	else	
	BlogService.addComment($scope.commentText,id).then (function(response){
	alert('Added Successfully')	
	$scope.commentText=''
	$scope.blogPost=response.data
	},function(response){
		if(response.status==401){
			$location.path('/login')
		}
		if(response.status==500){
			$scope.error=response.data
		}
	})		
	}
	$scope.showComments=function(){
	alert('show comments')
	$scope.showComment=!$scope.showComment
}
})