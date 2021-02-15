document.querySelector("a.check-button").onclick = function () {
	var studentId = document.getElementById("student-id").value;
	var year = document.getElementById("yearList");
	var valYear = year.options[year.selectedIndex].value;
	var semester = document.getElementById("semesterList");
	var valSemester = semester.options[semester.selectedIndex].value;
	
	
	location.href="check?studentId="+studentId+"&registerYear="+valYear+"&registerSemester="+valSemester
};
