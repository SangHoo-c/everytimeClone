document.addEventListener("DOMContentLoaded", function() {
	const checkEvalDone = document.querySelectorAll("a.check-eval-done");
	const indicatorEval = document.querySelector(".balloon");
	
	var check_flag = 0;
	for (var i=0; i<checkEvalDone.length; i++){
		if(checkEvalDone[i].dataset.value =='F'){
			check_flag ++;	
		}		
	}
	if(check_flag != 0){
		console.log("아직 해야할 강의평가가 남아있음");
		indicatorEval.style.visibility = "visible";
	}else{
		console.log("강의평가 완료 상태!!");
	}
	

	console.log("done");
});

document.querySelector("a.search-button").onclick = function () {
//  location.href = "/member/subjectList";
 page_move("search");
};

function page_move(url) {
  var form = document.createElement("form");
  var parm = new Array();
  var input = new Array();
  var inputSub = document.querySelector(".input-sub").value;
  
  
  form.action = url;
  form.method = "get";


  parm.push( ["subjectName", inputSub] );
  
  for (var i = 0; i < parm.length; i++) {
      input[i] = document.createElement("input");
      input[i].setAttribute("type", "hidden");
      input[i].setAttribute("name", parm[i][0]);
      input[i].setAttribute("value", parm[i][1]);
      form.appendChild(input[i]);
  }
  document.body.appendChild(form);
  form.submit();
}