/**
 * JobService
 */

app.factory('JobService',function($http){
       var jobService={}
       
       jobService.addJob=function(job)
       {
    	   return $http.post("http://localhost:8085/MyNewSecPrjctMiddleware/savejob",job);
       }
       jobService.getAllJobs=function()
       {
    	   return $http.get("http://localhost:8085/MyNewSecPrjctMiddleware/alljobs");
       }
       jobService.getJob=function(jobId)
       {
    	   return $http.get("http://localhost:8085/MyNewSecPrjctMiddleware/getjob/"+jobId)
       }
        return jobService;
})