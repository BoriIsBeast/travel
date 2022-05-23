//여행지 detail 페이지에서 장바구니에 추가할 때
function cartAdd(){
    $("#cartBtn").click(function(){
         let id=cartBtn.getAttribute("data-id")
        // console.log(id);
        let productNum = cartBtn.getAttribute("data-num")
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
                total:total
            },
            success:function(data){
                if(data.trim()=='1'){
                    let c = confirm("장바구니 추가 성공! 장바구니로 이동하시겠습니까?")
                        if(c){
                            $(location).attr('href', '../cart/list?id='+id);
                        }
                   
                }else {
                    
                       alert("로그인이 필요합니다.");
                      
                       location.href="../member/login";
                    }
                
            },
            error:function(){
                alert("실패")
            }

        })


    })
}		

//장바구니 페이지
const btn = document.getElementsByClassName('btnCart')
for(b of btn){
    let cartNum=b.getAttribute("data-num");
    
    //장바구니 페이지에서 - + 버튼 클릭했을 때 수, 가격 변동 
    let total;
    //- 버튼
    $('#minus'+cartNum).click(function(){   
        let amount = $('#amount'+cartNum).val()-1;
        if(amount<1){
            alert("1매 이상 구매가능합니다.")
            let value=1;
            $('#amount'+cartNum).val(value);
            amount=value;  
        }
        $('#amount'+cartNum).val(amount);
        total = Number($('#price'+cartNum).val())*amount;
        $('#total'+cartNum).val(total);

       
        //선택된 후 - 버튼으로 가격 변동시 총 금액도 변경
        let tprice = $("#totalPrice").val() - Number($('#price'+cartNum).val())*1;
        console.log(tprice);
        $("#totalPrice").val(tprice);
        
        
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
   //+ 버튼
    $('#plus'+cartNum).click(function(){
        let amount = Number($('#amount'+cartNum).val())+1;
        let total;

        if(amount>10){
            alert("최대 10매까지 구매가능합니다.")
            let value=10;
            $('#amount'+cartNum).val(value);
            amount=value;  
        }
        $('#amount'+cartNum).val(amount);
        total = Number($('#price'+cartNum).val())*amount;
        $('#total'+cartNum).val(total);
        
        $(".checkbox").each(function(idx,item){
        if($(".checkbox").prop("checked")){
            //선택된 후 + 버튼으로 가격 변동시 총 금액도 변경
            let tprice = Number($("#totalPrice").val()) + Number(($('#price'+cartNum).val()*1));
            console.log(tprice);
            $("#totalPrice").val(tprice);
        }
        })
     
      
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

    //X 버튼으로 항목 삭제 구현 (checkbox로 여러개 삭제 구현해보기)
    $('#deleteBtn'+cartNum).click(function(){
        console.log("click")
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
                    alert("삭제 되었습니다.")
                }
            },
            error:function(){
                alert("실패")
            }
    })
    })
    //장바구니에 담겨 있는 목록 중 현재 날짜 보다 이전 날짜 삭제 (schedule 이용해보기)
    let today = new Date();   

    let year = today.getFullYear(); // 년도
    let month = today.getMonth() + 1;  // 월
    let date = today.getDate();  // 날짜
    let day= year + '-' +0 + month + '-' + date;

    //console.log(day)
   // console.log($('#date'+cartNum).val())

    if($('#date'+cartNum).val()<day){
        //console.log($('#date'+cartNum).val())
        //console.log("지난날짜")

       $.ajax({
        type:"POST",
        url:"./delete",
        data:{
            cartNum:cartNum
        },
        success:function(data){
            if(data.trim()=='1'){
                $('#date'+cartNum).parent().parent().remove();
                alert("이전 날짜가 삭제되었습니다.")
            }
        },
        error:function(){
            alert("실패")
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
        console.log("전체선택 해제")
        sum=0;
        $("#totalPrice").val(sum);
    }
   
})

//각각선택, 가격
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

$('#payment').click(function(){ 
    let price=$("#totalPrice").val();
    console.log(price)
    if(price==0){
        alert("결제할 내역이 없습니다.")
    }else{
        window.confirm("총 결제금액은 "+price+"원 입니다. 결제하시겠습니까?")
    }
})

