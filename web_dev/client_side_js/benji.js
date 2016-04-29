

function green_survey() {
	var survey = document.getElementById("survey");
survey.style.backgroundColor = "green";
}
green_survey();

function blue_survey(event) {
	var survey = document.getElementById("survey");
	survey.style.backgroundColor= "blue";
}


var survey=document.getElementById("survey");
survey.addEventListener("click", blue_survey);

function mike() {
	var tyson=document.getElementById("tyson");
	tyson.style.visibility="hidden";
}
tyson.addEventListener("click", mike);