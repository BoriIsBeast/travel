var btnOpen  = document.getElementById('btnOpen');
var btnCheck = document.getElementById('btnCheck');
var btnClose = document.getElementById('btnClose');
var pwd = document.getElementById('pwd');

// modal 창을 감춤
var closeRtn = function(){
  var modal = document.getElementById('modal');
  modal.style.display = 'none';
}

// modal 창을 보여줌
btnOpen.onclick = function(){
  var modal = document.getElementById('modal');
  modal.style.display = 'block'; 
}

btnCheck.onclick = function(){
	  if(pwd.value==pwd.getAttribute("data-pw")){
          let c = window.confirm("비밀번호 변경 창으로 이동하시겠습니까?")
          if(c){
              location.href="./updatePw?id="+pwd.getAttribute("data-id");
          }else{
              alert("취소 되었습니다.")
          }
		  
	  }else if(pwd.value!=pwd.getAttribute("data-pw")){
		  alert("기존 비밀번호가 틀립니다.");
	  }
}
btnClose.onclick = closeRtn;