// initial settings 
document.addEventListener("DOMContentLoaded", function(){
	
	const checkEvalDone = document.querySelectorAll("a.check-eval-done");
	const studentId = document.getElementById("studentId").value;
	
//	console.log(studentId);
	
	var check_flag = 0;
	for (var i=0; i<checkEvalDone.length; i++){
		if(checkEvalDone[i].dataset.value =='F'){
			check_flag ++;	
		}		
	}
	
	if(check_flag != 0){
		console.log("go to evlaution,, ");
		document.querySelector("a.score-nav").href = "evaluation";
		
		
	}else{
		console.log("go to semester Check");
		document.querySelector("a.score-nav").href = "grade?studentId="+studentId;
	}
	
	
	console.log("done");
});