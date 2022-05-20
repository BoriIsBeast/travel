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
        let totalPrice = $("#total").val();
        //console.log(totalPrice);
       

        $.ajax({
            type:"POST",
            url:"../cart/add",
            data:{
                id:id,
                productNum:productNum,
                amount:amount,
                regDate:date,
                total:totalPrice
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
    let totalPrice;
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
        totalPrice = Number($('#price'+cartNum).val())*amount;
        $('#total'+cartNum).val(totalPrice);
        
        $.ajax({
            type:"POST",
            url:"./update",
            data:{
                amount:amount,
                total:totalPrice,
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
        let totalPrice;

        if(amount>10){
            alert("최대 10매까지 구매가능합니다.")
            let value=10;
            $('#amount'+cartNum).val(value);
            amount=value;  
          }
            $('#amount'+cartNum).val(amount);
            totalPrice = Number($('#price'+cartNum).val())*amount;
            $('#total'+cartNum).val(totalPrice);
      
        $.ajax({
            type:"POST",
            url:"./update",
            data:{
                amount:amount,
                total:totalPrice,
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




$('#totalCheckbox').click(function(){
    $('.checkbox').prop("checked", $('#totalCheckbox').prop("checked"));

    $(".checkbox").each(function(idx,item){
		if($(item).attr("data-check")){
            console.log($(item).attr("data-check"));
		} 
	});
   
})

$('.checkbox').on("click",function(){
    let check = true;
    console.log($(this).attr("data-check"));

    $(".checkbox").each(function(idx,item){
		if(!$(item).prop("checked")){
			check=false;
		} 
	});
    $("#totalCheckbox").prop("checked",check);
});

$('#payment').click(function(){
    $(".checkbox").each(function(){
		if($(this).prop("checked")){
            console.log($(this).attr("data-check"));
        }
	});
})

