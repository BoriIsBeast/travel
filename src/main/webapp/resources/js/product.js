
function mediumCategorySelect(){
   
    $("#largeCategory").change(function(){

        console.log("largeCetegory Change");
        if(this.value == '서울'){
            $("#mediumCategoryResult").empty();
            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option>선택해주세요</option>';
            f=f+'<option value="마포구">마포구</option>';
            f=f+'<option value="강남구">강남구</option>';
            f=f+'<option value="동대문구">동대문구</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }
       

        if(this.value == '경기'){
            
            $("#mediumCategoryResult").empty();
            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option>선택해주세요</option>';
            f=f+'<option value="인천">인천</option>';
            f=f+'<option value="수원">수원</option>';
            f=f+'<option value="파주">파주</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }

 
        if(this.value == '강원'){
            $("#mediumCategoryResult").empty();
            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option>선택해주세요</option>';
            f=f+'<option value="강릉">강릉</option>';
            f=f+'<option value="동해">동해</option>';
            f=f+'<option value="속초">속초</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }
        if(this.value == '경상'){
            $("#mediumCategoryResult").empty();

            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option>선택해주세요</option>';
            f=f+'<option value="부산">부산</option>';
            f=f+'<option value="경주">경주</option>';
            f=f+'<option value="문경">문경</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }
        if(this.value == '전라'){
            $("#mediumCategoryResult").empty();

            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option>선택해주세요</option>';
            f=f+'<option value="광주">광주</option>';
            f=f+'<option value="목포">목포</option>';
            f=f+'<option value="여수">여수</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }
        if(this.value == '충청'){
            $("#mediumCategoryResult").empty();

            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option>선택해주세요</option>';
            f=f+'<option value="대전">대전</option>';
            f=f+'<option value="단양">단양</option>';
            f=f+'<option value="제천">제천</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }
        if(this.value == '제주'){
            $("#mediumCategoryResult").empty();
            let f = '<label for="exampleInputPassword1" class="form-label">중분류</label>';
            f=f+'<select class="form-select" aria-label="Default select example" name="mediumCategory" id="mediumCategory">';
            f=f+'<option value="제주시">제주시</option>';
            f=f+'<option value="서귀포시">서귀포시</option>';
            f=f+'</select>'

            $("#mediumCategoryResult").append(f);
        }
  
    $("#mediumCategoryResult").change(function(){
       
        $("#smallCategoryResult").empty();
        let f = '<label for="exampleInputPassword1" class="form-label">소분류</label>';
        f=f+'<select class="form-select" aria-label="Default select example" name="smallCategory">';
        f=f+'<option>선택해주세요</option>';
        f=f+'<option value="가족과 함께">#가족과 함께</option>';
        f=f+'<option value="연인과 함께">#연인과 함께</option>';
        f=f+' <option value="나홀로 여행">#나홀로 여행</option>';
        f=f+'<option value="자연친화적인">#자연친화적인</option>';
        f=f+' <option value="힐링 여행">#힐링 여행</option>';
        f=f+'<option value="기타">#기타</option>';
        f=f+ '</select>';

            $("#smallCategoryResult").append(f);
    });

});





}