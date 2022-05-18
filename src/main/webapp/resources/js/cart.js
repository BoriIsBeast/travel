// const cartBtn = document.querySelector('#cartBtn')
// const amount = document.querySelector('#amount')
// const total = document.querySelector('#total')
// const selectDate = document.querySelector('#dateResult')

// cartBtn.addEventListener("click",function(event){

//     let productNum = cartBtn.getAttribute("data-num")
//     console.log(productNum);
   
//     let value = amount.options[amount.selectedIndex].value; 
//     console.log(value);
//     let date = selectDate.value;
//     console.log(date);
//     let totalPrice = total.value;
//     console.log(totalPrice);

//     console.log("function 밖")
  

//     let xhttp = new XMLHttpRequest();
    
//     xhttp.open("POST", "../cart/add")
   
//     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  
//     xhttp.send("productNum="+productNum+"&amount="+value+"&regDate="+date+"&total="+total);
  
//     xhttp.onreadystatechange=function(){
//         if(this.readyState == 4 && this.status==200){
//             console.log("if문 안")
//            let result = this.responseText.trim();
           
//             if(result == '0'){
//                 alert("장바구니에 추가를 하지 못하였습니다.");
//             } else if(result == '1'){
//                 alert("장바구니에 추가되었습니다.");
//             }
//         }
//     }
// })

function cartAdd(){
    $("#cartBtn").click(function(){
        let productNum = cartBtn.getAttribute("data-num")
        console.log(productNum);
           
        let amount = $("#amount").val();
        console.log(amount);
        let date = $("#dateResult").val();
        console.log(date);
        let totalPrice = $("#total").val();
        console.log(totalPrice);

        $.ajax({
            type:"POST",
            url:"../cart/add",
            data:{
                productNum:productNum,
                amount:amount,
                regDate:date,
                total:totalPrice
            },
            success:function(data){
                if(data.trim()=='1'){
                    let c = confirm("장바구니 추가 성공! 장바구니로 이동하시겠습니까?")
                        if(c){
                            $(location).attr('href', '../cart/list');
                          
                        }
                   
                }else{
                    alert("장바구니 추가 실패")
                }
            },
            error:function(){
                alert("실패")
            }

        })


    })
}		
   		
