/**
 * 
 */
const year = document.getElementById("year");
const month = document.getElementById("month");
const day = document.getElementById("day");

const post = document.getElementById("post");

const mainAddress = document.getElementById("mainAddress");
const detailAddress = document.getElementById("detailAddress");


for(let i=2022;i>=1900;i--) {
    let option = document.createElement("option");
    option.setAttribute("value", i);
    option.innerHTML = i;

    year.append(option);
}

for(let i=1;i<=12;i++) {
    let option = document.createElement("option");
    option.setAttribute("value", i);
    option.innerHTML = i;

    month.append(option);
}

for(let i=1;i<=31;i++) {
    let option = document.createElement("option");
    option.setAttribute("value", i);
    option.innerHTML = i;

    day.append(option);
}

$("#year").click(function(){
	
birth.value = year.value + "-" + month.value + "-" + day.value;
});

$("#month").click(function(){
	
birth.value = year.value + "-" + month.value + "-" + day.value;
});

$("#day").click(function(){
	
birth.value = year.value + "-" + month.value + "-" + day.value;
});


/*주소 API 실행*/

$("#post").click(function(){
	kakaopost()
	
});

/*주소 API*/

function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipCode").value = data.zonecode;
           document.querySelector("#mainAddress").value =  data.address;
        }
    }).open();
}    

$("#detailAddress").blur(function(){
	document.querySelector("#address").value = mainAddress.value +" "+ detailAddress.value;
});

