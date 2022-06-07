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
            if(data<0){
                alert("다시 시도해주세요.")
            }else{
                alert("결제성공")
                location.href="../pay/detailOrder?num="+data;
            }
        },
        error:function(){
            alert("실패")
        }
    })
})

//결제 페이지 이동 후 총 금액 계산
let count = $(".cartNum");
let totalSum = 0;

for (cn of count) {
    let cartNum = cn.value;
    let total = $("#total" + cartNum).val();
    totalSum += parseInt(total);
    $("#totalPrice").val(totalSum);   
}
$("#orderDel").click(function(){
    let num=$("#num").val();
    let id=$(this).attr("data-id");
    console.log("결제취소");
    let check = confirm("결제 취소 하시겠습니까?");
    
    const c = document.getElementsByClassName("cartNum");
    let cartNum=[];
    for(cn of c){
        cartNum.push(cn.value);
    }


    if(check){
        console.log(num);
        console.log(id);
        $.ajax({
            type:"POST",
            url:"./delete",
            data:{
                num:num,
                cartNum:cartNum
            },
            success:function(data){
                if(data>0){
                    alert("결제가 취소되었습니다.")
                    location.href="./orderList?id="+id;
                  
                }
            },
            error:function(){
                alert("실패")
            }
        })
    }
})

