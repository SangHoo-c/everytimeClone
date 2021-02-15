// initial settings 
document.addEventListener("DOMContentLoaded", function(){

	const buttonList = document.querySelectorAll(".evaluate-button");
	const checkButton = document.querySelector("a.check-button");
	let point_hw = 0;
	let point_test = 0;
	let point_att = 0;
	let point_meet = 0 ;
	let point_under = 0;
	let point_rate = 0; 
	
	
	// 초기값 설정 
	
	
	var check_flag = 0;
	
	for (var i =0; i< buttonList.length; i++){
		if(buttonList[i].dataset.value != 0){
			
			// if 데이터가 있는 경우, 평가완료로 설정 
			buttonList[i].style.background = "Gray";
			buttonList[i].innerHTML = "평가완료";
	        buttonList[i].classList.add("inactiveLink");
	        check_flag ++;
	        console.log(check_flag);
		}
		// console.log(buttonList[i].dataset.gradeNo);
	}
	checkButton.onclick = function(){
		if(buttonList.length == check_flag){
			location.href = "semesterCheck.html";
		}else alert("강의평을 마저 작성해주세요.");
		
	}
	

	var assessmentInput = document.querySelectorAll("dd a");


	//Get the modal
	const modal = document.getElementById("myModal");
	// Get the <span> element that closes the modal
	const span = document.getElementsByClassName("close")[0];
	//modal 평가란 

	//eval_hw 과제 평가 점수 체크
	const eval_hw = document.querySelectorAll("a.eval_hw");
	for (var j = 0; j < eval_hw.length; j++)(function (j) {
	 eval_hw[j].onclick = function () {
	     // console.log(eval_hw[j].dataset.value);
		 point_hw = eval_hw[j].dataset.value;
		 
	     // active 클래스 변경 
	     for (var i = 0; i < eval_hw.length; i++) {
	         if (eval_hw[i].classList.contains("active")) {
	             eval_hw[i].classList.remove("active");
	         }
	         // console.log(eval_hw[i].classList.contains("active"));
	     }

	     // 클릭한 곳에 active 클래스 
	     eval_hw[j].classList.add("active");
	 }
	})(j);

	//eval_test 시험 평가 점수 체크
	const eval_test = document.querySelectorAll("a.eval_test");
	for (var j = 0; j < eval_test.length; j++)(function (j) {
	 eval_test[j].onclick = function () {
	     // console.log(eval_test[j].dataset.value);
		 point_test = eval_test[j].dataset.value;
		 
	     // active 클래스 변경 
	     for (var i = 0; i < eval_test.length; i++) {
	         if (eval_test[i].classList.contains("active")) {
	             eval_test[i].classList.remove("active");
	         }
	         // console.log(eval_test[i].classList.contains("active"));
	     }

	     // 클릭한 곳에 active 클래스 
	     eval_test[j].classList.add("active");
	 }
	})(j);

	//eval_attendance 출석 평가 점수 체크
	const eval_attendance = document.querySelectorAll("a.eval_attendance");
	for (var j = 0; j < eval_attendance.length; j++)(function (j) {
	 eval_attendance[j].onclick = function () {
	     // console.log(eval_attendance[j].dataset.value);
		 point_att = eval_attendance[j].dataset.value;
		 
		 
	     // active 클래스 변경 
	     for (var i = 0; i < eval_attendance.length; i++) {
	         if (eval_attendance[i].classList.contains("active")) {
	             eval_attendance[i].classList.remove("active");
	         }
	         // console.log(eval_attendance[i].classList.contains("active"));
	     }

	     // 클릭한 곳에 active 클래스 
	     eval_attendance[j].classList.add("active");
	 }
	})(j);


	//eval_team 팀과제 평가 점수 체크
	const eval_team = document.querySelectorAll("a.eval_team");
	for (var j = 0; j < eval_team.length; j++)(function (j) {
	 eval_team[j].onclick = function () {
	     // console.log(eval_team[j].dataset.value);
		 point_meet = eval_team[j].dataset.value;
		 
	     // active 클래스 변경 
	     for (var i = 0; i < eval_team.length; i++) {
	         if (eval_team[i].classList.contains("active")) {
	             eval_team[i].classList.remove("active");
	         }
	         // console.log(eval_team[i].classList.contains("active"));
	     }

	     // 클릭한 곳에 active 클래스 
	     eval_team[j].classList.add("active");
	 }
	})(j);

	//eval_understand 난이도 평가 점수 체크
	const eval_understand = document.querySelectorAll("a.eval_understand");
	for (var j = 0; j < eval_understand.length; j++)(function (j) {
	 eval_understand[j].onclick = function () {
	     // console.log(eval_understand[j].dataset.value);
		 point_under = eval_understand[j].dataset.value;
		 
	     // active 클래스 변경 
	     for (var i = 0; i < eval_understand.length; i++) {
	         if (eval_understand[i].classList.contains("active")) {
	             eval_understand[i].classList.remove("active");
	         }
	         // console.log(eval_understand[i].classList.contains("active"));
	     }

	     // 클릭한 곳에 active 클래스 
	     eval_understand[j].classList.add("active");
	 }
	})(j);


	//eval_rate 평점 평가 점수 체크
	const eval_rate = document.querySelectorAll("a.eval_rate");
	for (var j = 0; j < eval_rate.length; j++)(function (j) {
	 eval_rate[j].onclick = function () {
	     console.log(eval_rate[j].dataset.value);
	     point_rate = eval_rate[j].dataset.value;
	     
	     // active 클래스 변경 
	     for (var i = 0; i < eval_rate.length; i++) {
	         if (eval_rate[i].classList.contains("active")) {
	             eval_rate[i].classList.remove("active");
	         }
	         console.log(eval_rate[i].classList.contains("active"));
	     }

	     // 클릭한 곳에 active 클래스 
	     eval_rate[j].classList.add("active");
	 }
	})(j);
	
	document.querySelector("a.evaluate-submit").onclick = function () {
	    modal.style.display = "none";
	};

	// When the user clicks on <span> (x), close the modal
	span.onclick = function () {
	    modal.style.display = "none";
	};

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function (event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	};

	
	
	

	//When the user clicks the button, open the modal
	const evalbtn = document.querySelectorAll("a.evaluate-button");

	
	// 강의평 업데이트 파트 ! 
	for( var j =0; j < evalbtn.length; j ++)(function(j){
		evalbtn[j].onclick = function(){
			  modal.style.display = "block";
			  document.querySelector(".register-subject").innerHTML = evalbtn[j].dataset.sname;
			  document.querySelector(".register-professor").innerHTML = evalbtn[j].dataset.id;
			  
			  
			  console.log("@@subjectName : " + evalbtn[j].dataset.sname);
			  console.log("gradeNO : " + evalbtn[j].dataset.id);
			  
			  document.querySelector("a.evaluate-submit").onclick = function () {
			      evalbtn[j].style.background = "Gray";
			      evalbtn[j].innerHTML = "평가완료";
			      modal.style.display = "none";
			      
			      
			      console.log(point_hw);
			      console.log(point_test);
			      console.log(point_att);
			      console.log(point_meet);
			      console.log(point_under);
			      console.log(point_rate);
			      console.log(document.getElementById("inputTextArea").value);
			      
			      evalbtn[j].classList.add("inactiveLink");
			      
			      location.href = "evalUpdate?evalAssignment="+point_hw+"&gradeNo="+evalbtn[j].dataset.id+"&evalExam="+point_test+"&evalAttendance="+point_att+"&evalTeam="+point_meet+"&evalUnderstanding="+point_under+"&evalPoint="+point_rate+"&evalText="+ document.getElementById("inputTextArea").value;
//			      alert("평가완료!");
			      
			  };
		}
		
	})(j);



	

	console.log("done!");

});



//text area 에 적은 내용 출력 
//console.log(document.getElementById("inputTextArea").value);

