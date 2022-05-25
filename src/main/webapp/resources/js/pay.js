//결제 페이지에서 장바구니 페이지로 다시 이동
$("#gotocart").click(function(){
    let id=$(this).attr("data-id");
    window.location="./list?id="+id;
})

//결제
const total=document.getElementsByClassName("total");
const cart=document.getElementsByClassName("cartNum");

$("#pay").click(function(){
    console.log("click")
    let price =0;
    let cartNum=0;
    let id = $(this).attr("data-id");  

    for(t of total){ 
        price =Number(price)+ Number(t.value);
    }
    for(c of cart){
        cartNum=c.value;
        
       
    }
        
    $.ajax({
        type:"POST",
        url:"../pay/add",
        data:{
            id:id,
            price:price
        },
        success:function(data){
            if(data.trim()=='1'){
                alert("결제성공")
            }
        },
        error:function(){
            alert("실패")
        }
    })
     
})