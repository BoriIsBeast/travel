const reply = document.querySelector("#reply");
const num = document.querySelector("#num");
const id = document.querySelector("#id");
const contents = document.querySelector("#contents");
const replyResult = document.querySelector("#replyResult");
const del = document.querySelector(".del");

//list
getList();

function getList() {
	const xhttp = new XMLHttpRequest();
	xhttp.open("GET", "../TbestReply/list?num=" + num.value);
	xhttp.send();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			console.log(this.responseText);
			replyResult.innerHTML = this.responseText.trim();
		}
	}

}

// add
reply.addEventListener("click", function() {
	console.log(num.value);
	console.log(id.value);
	console.log(contents.value);
	// 1. JS에서 요청 객체 생성(준비)
	const xhttp = new XMLHttpRequest();
	// 요청 정보 입력
	//open("method형식", "URL주소")
	xhttp.open("POST", "../TbestReply/add");
	// 요청 header 정보
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	//요청 정보
	xhttp.send("num=" + num.value + "&id=" + id.value + "&contents=" + contents.value);
	//응답처리
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			console.log(this.responseText);
			let result = this.responseText.trim();
			if (result == '1') {
				alert('댓글 등록 성공');
				getList();
			} else {
				alert('댓글 등록 실패');
			}
		}
	}
});

//update
replyResult.addEventListener("click", function(event) {
	if (event.target.classList.contains('update')) {
		//event.target.classList.replace('update', reply);
		let num = event.target.getAttribute('data-index'); // num
		let replyNum = document.querySelector("#up" + num); //td

		let text = replyNum.innerText;
		replyNum.innerText = '';

		let tx = document.createElement('textarea');
		tx.setAttribute("id", "update" + num);
		tx.classList.add("reply");
		tx.setAttribute("data-num", num);
		tx.value = text;

		//console.log(tx);
		replyNum.append(tx);

	}
});

replyResult.addEventListener("change", function(event) {
	if (event.target.classList.contains('reply')) {
		let replyNum = event.target.getAttribute('data-num'); // num
		console.log(replyNum);
		let contents = event.target.value
		console.log("contents", contents);
		console.log(event.target);
		let check = window.confirm("수정하시겠습니까?"); // 확인 true 취소 false

		if (check) {
			let xhttp = new XMLHttpRequest();
			xhttp.open("POST", "../TbestReply/update");
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("replyNum=" + replyNum + "&contents=" + contents);
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					console.log(this.responseText);
					if (this.responseText.trim() == '1') {
						alert('댓글 수정 성공');
						document.querySelector("#up" + replyNum).innerHTML = contents;
					} else {
						alert('댓글 수정 실패');
					}
				}
			}
		}
	}
});

// delete
replyResult.addEventListener("click", function(event) {

	if (event.target.classList.contains('del')) {
		console.log("del click");
		let replyNum = event.target.getAttribute("data-num");
		console.log(replyNum);

		const xhttp = new XMLHttpRequest();
		xhttp.open("POST", "../TbestReply/delete");
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
		xhttp.send("replyNum=" + replyNum);
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				console.log(this.responseText);
				if (this.responseText.trim() == '1') {
					alert('댓글 삭제 성공');
					getList();
				} else {
					alert('댓글 삭제 실패');
				}
			}
		}
	}
});