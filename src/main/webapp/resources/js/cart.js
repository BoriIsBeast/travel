//여행지 detail 페이지에서 장바구니에 추가할 때
function cartAdd(){
    $("#cartBtn").click(function(){
        let id=$(this).attr("data-id");
        // console.log(id);
        let productNum = $(this).attr("data-num");
        //console.log(productNum); 
        let amount = $("#amount").val();
        //console.log(amount);
        let date = $("#dateResult").val();
        //console.log(date);
        let total = $("#total").val();
        //console.log(total);
       

        $.ajax({
            type:"POST",
            url:"../cart/add",
            data:{
                id:id,
                productNum:productNum,
                amount:amount,
                regDate:date,
                total:total,
                check:0
            },
            success:function(data){
                if(data==2){
                    alert("로그인이 필요합니다.");  
                    location.href="../member/login";

                }else if(data==3){
                    let check=confirm("이미 장바구니에 담은 날짜입니다. 장바구니로 이동하시겠습니까?");
                    if(check){
                        $(location).attr('href', '../cart/list?id='+id);
                    }
                }else{
                    let c = confirm("장바구니 추가 성공! 장바구니로 이동하시겠습니까?");
                    if(c){
                        $(location).attr('href', '../cart/list?id='+id);
                    }
                   
                }

                
            },
            error:function(){
                alert("실패")
            }
        })
    })
}

//장바구니 페이지에서 - 버튼 클릭했을 때 수, 가격 변동 
$(".minus").click(function(){
    console.log($(this).attr("id"));
    let cartNum=$(this).attr("data-num");

    let amount = $('#amount'+cartNum).val()-1;
    if(amount<1){
        alert("1매 이상 구매가능합니다.");
        let value=1;
        $('#amount'+cartNum).val(value);
        amount=value;  
    }
    $('#amount'+cartNum).val(amount);

    let total = Number($('#price'+cartNum).val())*amount;
    $('#total'+cartNum).val(total);
    
    //선택된 후 - 버튼으로 가격 변동시 총 금액도 변경
    let t=0;
    $(".checkbox").each(function(idx,item){
        if($(item).prop("checked")){

            let c = $(item).attr("data-check");
            console.log($("#total"+c).val());

            t=t+$("#total"+c).val()*1;

        }
    })
    $("#totalPrice").val(t);

    $.ajax({
        type:"POST",
        url:"./update",
        data:{
            amount:amount,
            total:total,
            cartNum:cartNum
        },
        success:function(data){
            if(data.trim()=='1'){
                
            }
        },
        error:function(){
            alert("실패");
        }
    })
})

//장바구니 페이지에서 + 버튼 클릭했을 때 수, 가격 변동 
$('.plus').click(function(){
    let cartNum=$(this).attr("data-num");

    let amount = Number($('#amount'+cartNum).val())+1;

    if(amount>10){
        alert("최대 10매까지 구매가능합니다.");
        let value=10;
        $('#amount'+cartNum).val(value);
        amount=value;  
    }
    $('#amount'+cartNum).val(amount);

    let total = Number($('#price'+cartNum).val())*amount;
    $('#total'+cartNum).val(total);
    
    //선택된 후 + 버튼으로 가격 변동시 총 금액도 변경
    let t = 0;
    $(".checkbox").each(function(idx,item){
        if($(item).prop("checked")){

            let c = $(item).attr("data-check");
            console.log($("#total"+c).val());

            t=t+$("#total"+c).val()*1;

        }
    })
    $("#totalPrice").val(t);

    $.ajax({
        type:"POST",
        url:"./update",
        data:{
            amount:amount,
            total:total,
            cartNum:cartNum
        },
        success:function(data){
            if(data.trim()=='1'){
               
            }

        },
        error:function(){
            alert("실패")
        }
    })
}) 

const btn = document.getElementsByClassName('btnCart')
for(b of btn){
    let cartNum=b.getAttribute("data-num");

    //X 버튼으로 항목 삭제 구현 (checkbox로 여러개 삭제 구현해보기)
    $('#deleteBtn'+cartNum).click(function(){
        console.log("click");
        let check = window.confirm("삭제하시겠습니까?");
        if(!check){
          return;
        }
       let selector=$(this);
        $.ajax({
            type:"POST",
            url:"./delete",
            data:{
                cartNum:cartNum
            },
            success:function(data){
                if(data.trim()=='1'){
                    $(selector).parent().parent().remove();
                    alert("삭제 되었습니다.");
                    window.location.reload();
                }
            },
            error:function(){
                alert("실패")
            }
        })
    })

    //장바구니에 담겨 있는 목록 중 현재 날짜 보다 이전 날짜 삭제 
    let today = new Date();   

    let year = today.getFullYear(); // 년도
    let month = today.getMonth() + 1;  // 월
    let date = today.getDate();  // 날짜
    let day= year + '-' +0 + month + '-' +0+ date;

    console.log(day);
    console.log($('#date'+cartNum).val());

    if($('#date'+cartNum).val()<day){
        console.log($('#date'+cartNum).val());
        console.log("지난날짜");

       $.ajax({
        type:"POST",
        url:"./delete",
        data:{
            cartNum:cartNum
        },
        success:function(data){
            if(data.trim()=='1'){
                $('#date'+cartNum).parent().parent().remove();
                alert("이전 날짜가 삭제되었습니다.");
                
            }window.location.reload();
        },
        error:function(){
            alert("실패");
        }
    })
    }
}

//---------------------------------checkbox-------------------------------------

//전체선택, 가격
$('#totalCheckbox').click(function(){
    $('.checkbox').prop("checked", $('#totalCheckbox').prop("checked"));
    let sum=0;
    $(".checkbox").each(function(idx,item){ 
		if($(item).attr("data-check")){
            let cartNum=$(item).attr("data-check");
            let totalPrice=$("#total"+cartNum).val();
            sum+=parseInt(totalPrice);
            $("#totalPrice").val(sum);
        }
	});
    if(!$("#totalCheckbox").prop("checked")){
        console.log("전체선택 해제");
        sum=0;
        $("#totalPrice").val(sum);
    }
   
})

//각각 선택, 가격
$('.checkbox').on("click",function(){
    let check = true;
    let sum=0;
    $(".checkbox").each(function(idx,item){
        if($(item).prop("checked")){ 
            let cartNum=$(item).attr("data-check");
            let totalPrice=$("#total"+cartNum).val();
            sum+=parseInt(totalPrice);
            $("#totalPrice").val(sum);
            
        }
      
        //전체 선택 해제, 선택해제되면 총 가격도 0
		else if(!$(item).prop("checked")){
			check=false;
            
            $("#totalPrice").val(sum);
		}  
        
	}); 
    $("#totalCheckbox").prop("checked",check);
});

//장바구니->결제 페이지 이동
$('#payment').click(function(){ 
    let price=$("#totalPrice").val();
    console.log(price)

    let c=0;
    let cn='';

    if(price==0){
        alert("결제할 내역이 없습니다.")
    }else{
        
        $(".checkbox").each(function(idx,item){
            if($(item).prop("checked")){ 
                            
                c = $(item).attr("data-check");
                cn=cn+'&cartNum='+c;
            }
        }) 
        let id = $("#payment").attr("data-id"); 
        let p= window.confirm("총 결제금액은 "+price+"원 입니다. 결제 page로 이동하시겠습니까?");

        if(p){
            location.href='./payment?id='+id+cn;
        }
    }
})

//----------------------------------------바로결제-------------------------------
$("#directPay").click(function(){
    console.log("click");
    let check = window.confirm("결제창으로 이동 하시겠습니까?");
    let id = $("#directPay").attr("data-id"); 
    let productNum = $("#directPay").attr("data-num"); 
    let amount = $("#amount").val();
    let date = $("#dateResult").val();
    let total = $("#total").val();

    if(check){
        $.ajax({
            type:"POST",
            url:"../cart/add",
            data:{
                id:id,
                productNum:productNum,
                amount:amount,
                regDate:date,
                total:total,
                check:2 //바로결제로 장바구니 테이블에 insert 한 경우라는걸 알려주기 위함 (payCheck)
            },
            success:function(data){
                if(data==2){
                   alert("로그인이 필요합니다.");  
                   location.href="../member/login";
                    
                }else if(data<0) {
                    alert("다시 시도해주세요.")
                }else{
                     location.href='../cart/payment?id='+id+'&cartNum='+data;
                }
            },
            error:function(){
                alert("실패");
            }
        })
    }
})
