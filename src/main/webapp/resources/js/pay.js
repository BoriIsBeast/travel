//결제 페이지에서 장바구니 페이지로 다시 이동
$("#gotocart").click(function(){
    let id=$(this).attr("data-id");
    window.location="./list?id="+id;
})

//결제페이지 이동 시 tpay, tcartPay 테이블에 insert
const total=document.getElementsByClassName("total");
const cart=document.getElementsByClassName("cartNum");

$("#pay").click(function(){
    console.log("click")
    let price =0;
    let cartNum=[];
   
    
    let id = $(this).attr("data-id");  

    for(t of total){ 
        price =Number(price)+ Number(t.value);
    }
    for(c of cart){
        cartNum.push(c.value);
    }
    console.log(cartNum)

        
    $.ajax({
        type:"POST",
        url:"../pay/add",
        data:{
            id:id,
            price:price,
            cartNum:cartNum
        },
        success:function(data){
            if(data.trim()=='1'){
                alert("결제성공")
                location.href="../cart/list?id="+id;
            }
        },
        error:function(){
            alert("실패")
        }
    })
     
})

//결제 페이지 이동 후 총 금액 계산
let count = $(".count");
let totalSum = 0;

for (cn of count) {
    let cartNum = cn.getAttribute("data-cartNum");
    let total = $("#total" + cartNum).val();
    totalSum += parseInt(total);
    $("#totalPrice").val(totalSum);   
}

