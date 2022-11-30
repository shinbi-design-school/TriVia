function timer() {
	var sec = 30;
	var timerLocation = document.getElementById("timer");
	var st = new Date();
	var ed = new Date(st.getTime() + sec * 1000);
	timerLocation.innerHTML = "残り時間：　" + sec + "秒";
	var count = sec;
	var timerRun = setInterval(function() {
		count--;
		timerLocation.innerHTML = "残り時間：　" + count + "秒";
		st = new Date();
		if (st.getTime() >= ed.getTime()) {
			clearInterval(timerRun);
			var ansTra = document.getElementById("answer");
			ansTra.click();
		}



	}, 1000);

}