const reply = document.querySelector("#reply");
const num = document.querySelector("#num");
const id = document.querySelector("#id");
const contents = document.querySelector("#contents");
const replyResult = document.querySelector("#replyResult");
const del = document.querySelectorAll(".del");
const update = document.querySelectorAll(".update");
const id1= document.getElementById("id1");
const contents1=document.getElementById("contents1");


// list 가져오기
getList();
// -------------------list ajax ------------------
function getList(){
    const xhttp = new XMLHttpRequest();
    console.log("List 가져오는중");
    xhttp.open("GET", "../tQnaReply/list?num="+num.value);

    xhttp.send();

    xhttp.onreadystatechange = function(){
        if(this.readyState==4 && this.status==200){
            console.log(this.responseText);
            replyResult.innerHTML = this.responseText.trim();
            console.log("List 가져오는거 성공");
        }
    }

}

// ------------------------add------------------
reply.addEventListener("click",function(){
    console.log(num.value);
    console.log(id1.value);
    console.log(contents1.value);
 
    
     const xhttp = new XMLHttpRequest();
 
  
     
     xhttp.open("POST", "../tQnaReply/add");
 
 
     
     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
 
     
     xhttp.send("num="+num.value+"&id="+id1.value+"&contents="+contents1.value);
 
     
     xhttp.onreadystatechange = function(){
         if(this.readyState == 4 && this.status == 200){
             console.log(this.responseText);
             let result = this.responseText.trim();
             if(result=='1'){
                 alert('댓글이 등록 되었습니다');                 
                 getList();
             }else {
                 alert('댓글 등록이 실패');
             }
         }
     }

});
// ----------------update 
replyResult.addEventListener("click",function(event){
    if(event.target.classList.contains('update')){

        let num = event.target.getAttribute('data-index');
        let replyNum = document.querySelector("#up"+num);

        let text = replyNum.innerText;
        

        let tx = document.createElement('textarea');
        tx.setAttribute("id", "update"+num);
        tx.classList.add('reply');
        tx.setAttribute("data-num", num);
        tx.value = text;
        console.log(tx);
        replyNum.append(tx);
    }
});

// -----------------update 실행 ------------------
replyResult.addEventListener("change",function(event){
    if(event.target.classList.contains('reply')){
        let contents = event.target.value;
        let replyNum = event.target.getAttribute("data-num");
        

        let check = window.confirm("수정 하시겠습니까?");

        if(check){
            let xhttp = new XMLHttpRequest();

            xhttp.open("POST", "../tQnaReply/update");

            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            xhttp.send("replyNum="+replyNum+"&contents="+contents);

            xhttp.onreadystatechange = function(){
                if(this.readyState == 4 && this.status == 200){
                    if(this.responseText.trim()=='1'){
                        alert('수정완료');
                        document.querySelector("#up"+replyNum).innerHTML=contents;
                    }else {
                        alert('수정실패');
                    }
                }

            }


        }

    }

});


//   ---------------------delete ----------------------
replyResult.addEventListener("click",function(event){

    if(event.target.classList.contains('del')){
		console.log("삭제합니까?")
        let replyNum = event.target.getAttribute("data-num");
        
        
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST", "../tQnaReply/delete");
		
        
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        
        xhttp.send("replyNum="+replyNum);


        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                if(this.responseText.trim()=='1'){
                    alert('삭제성공');
                    getList();
                }else {
                    alert('삭제실패');
                }
            }

        }
    }

});
