//여행지 add 할때 가격 선택 란
function priceSelect(){
     $('#price').change(function(){
        $("#priceResult").empty();
        let p = $(this).val();

       if(p==1){
           let f = '<label for="exampleInputPassword1" class="form-label">가격</label>'
           f=f+'<input type="text" class="form-control" id="price" name="price" ></input>'
           f=f+'<label for="exampleInputPassword1" class="form-label">판매 수량</label>'
           f=f+'<input type="number" class="form-control" id="maxCount" name="maxCount"></input>'

           $("#priceResult").append(f);
       }
       else if(p==0){
        let f ='<input type="hidden" class="form-control" id="price" name="price" value="0" ></input>'
         $("#priceResult").append(f);
       }
     })

}

//update page 에서 가격 수정 
$("#changePrice").click(function(){
    if($("#changePrice").prop("checked")){
        $("#price").remove();

        //가격 변동 클릭시 select box 생성
        let cp='<div class="mb-3">'
        cp=cp+'<label for="exampleInputPassword1" class="form-label">Price</label>'
        cp=cp+'<select class="form-select" aria-label="Default select example" name="price1" id="priceSelect">'
        cp=cp+'<option>선택해주세요</option>'
        cp=cp+'<option class ="dataPrice" value="0">무료 입장</option>'
        cp=cp+'<option class ="dataPrice" value="1">가격 직접 입력</option>'
        cp=cp+'</select>'
        cp=cp+'</div>'
        $("#selectBox").append(cp);
    }
    
    $("#priceSelect").change(function(){
        //가격 직접 입력 선택
        if($("#priceSelect").val()==1){
            let max=$("#changePrice").attr('data-maxCount');
        
            let f = '<label for="exampleInputPassword1" class="form-label">가격</label>'
            f=f+'<input type="text" class="form-control" id="price" name="price" ></input>'
            //무료입장->가격직접입력 선택시 판매 수량 추가 //원래 maxCount 있고, 가격만 바꿀 때는 생성x
            if(max == ''){
                f=f+'<label for="exampleInputPassword1" class="form-label">판매 수량</label>'
                f=f+'<input type="number" class="form-control" id="maxCount" name="maxCount"></input>'
            }
            $("#changePriceResult").append(f);
        }
        //무료입장 선택
        else if($("#priceSelect").val()==0){
            let f ='<input type="hidden" class="form-control" id="price" name="price" value="0" ></input>'
            //가격있는 상태에서 무료입장 선택 시 maxCount 삭제
            $("#maxCount").remove();
            $("#changePriceResult").append(f);
        }
    })    
})

/*주소 API 실행*/

$("#post").click(function(){
	kakaopost()
	
});

/*주소 API*/

function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#mainAddress").value = data.address;
        }
    }).open();
}  
