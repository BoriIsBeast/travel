
// function mediumCategorySelect(){
   
//     $("#largeCategory").change(function(){

//         console.log("largeCetegory Change");
//         if(this.value == '서울'){
//             $("#mediumCategoryResult").empty();
//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option>선택해주세요</option>';
//             f=f+'<option value="마포구">마포구</option>';
//             f=f+'<option value="강남구">강남구</option>';
//             f=f+'<option value="동대문구">동대문구</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }
       

//         if(this.value == '경기'){
            
//             $("#mediumCategoryResult").empty();
//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option>선택해주세요</option>';
//             f=f+'<option value="인천">인천</option>';
//             f=f+'<option value="수원">수원</option>';
//             f=f+'<option value="파주">파주</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }

 
//         if(this.value == '강원'){
//             $("#mediumCategoryResult").empty();
//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option>선택해주세요</option>';
//             f=f+'<option value="강릉">강릉</option>';
//             f=f+'<option value="동해">동해</option>';
//             f=f+'<option value="속초">속초</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }
//         if(this.value == '경상'){
//             $("#mediumCategoryResult").empty();

//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option>선택해주세요</option>';
//             f=f+'<option value="부산">부산</option>';
//             f=f+'<option value="경주">경주</option>';
//             f=f+'<option value="문경">문경</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }
//         if(this.value == '전라'){
//             $("#mediumCategoryResult").empty();

//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option>선택해주세요</option>';
//             f=f+'<option value="광주">광주</option>';
//             f=f+'<option value="목포">목포</option>';
//             f=f+'<option value="여수">여수</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }
//         if(this.value == '충청'){
//             $("#mediumCategoryResult").empty();

//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option>선택해주세요</option>';
//             f=f+'<option value="대전">대전</option>';
//             f=f+'<option value="단양">단양</option>';
//             f=f+'<option value="제천">제천</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }
//         if(this.value == '제주'){
//             $("#mediumCategoryResult").empty();
//             let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
//             f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
//             f=f+'<option value="제주시">제주시</option>';
//             f=f+'<option value="서귀포시">서귀포시</option>';
//             f=f+'</select>'

//             $("#mediumCategoryResult").append(f);
//         }
  
//     $("#mediumCategoryResult").change(function(){
       
//         $("#smallCategoryResult").empty();
//         let f = '<label for="exampleInputPassword1" class="form-label">소분류</label>';
//         f=f+'<select class="form-select" aria-label="Default select example" name="smallCategory">';
//         f=f+'<option>선택해주세요</option>';
//         f=f+'<option value="가족과 함께">#가족과 함께</option>';
//         f=f+'<option value="연인과 함께">#연인과 함께</option>';
//         f=f+' <option value="나홀로 여행">#나홀로 여행</option>';
//         f=f+'<option value="자연친화적인">#자연친화적인</option>';
//         f=f+' <option value="힐링 여행">#힐링 여행</option>';
//         f=f+'<option value="기타">#기타</option>';
//         f=f+ '</select>';

//             $("#smallCategoryResult").append(f);
//     });

// });
// }
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
