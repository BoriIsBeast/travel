<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/header_script.jsp"></c:import>
<c:import url="../temp/header_css.jsp"></c:import>
<c:import url="../temp/header.jsp"></c:import>
</head>
<body>
<div class="container">
<h1>결제 page</h1>

<!-- 회원이 장바구니 list 에서 check한 cartNum들 결제 전 출력 page -->
	<table class="table table-hover">
		<thead>
			<tr>
				<th>NO.</th>
				<th scope="row">여행지</th>
				<td>선택 날짜</td>
				<td>수량</td>
				<td>가격</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach  items="${vo}" var="list" varStatus="status">	
		<input type="hidden" value="${list.cartNum}" class="cartNum"  readonly>
		<tr>
			
			<td>${status.index+1}</td>
			<th scope="row">${list.productVOs.name}</th>
			<td><input type="date" value="${list.regDate}" readonly></td>
			<td><input type="number" value="${list.amount}" readonly></td>
			<td><input type="text" value="${list.total}" class="total" id="total${list.cartNum}" readonly></td>
		</tr>
			
		</c:forEach>
		<tr>
					<td></td>
					<td></td>
					<td></td>
					
					<th>총 금액</th>
					<td><input type="text" id="totalPrice" readonly></td>
				</tr>
		</tbody>
				
	</table>				


	<div>
		<button type="button" id="gotocart" data-id="${member.id}">장바구니 이동</button>
	</div>
	<div>
		<button type="button" id="pay" data-id="${member.id}">결제하기</button>
	</div>
	<div>
		<button type="button" id="kakaoPay" data-id="${member.id}" data-name="${member.name}" >KAKAOPAY</button>
	</div>
</div>

<script type="text/javascript" src="../resources/js/pay.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
	$(document).ready(function(){
		$("#kakaoPay").click(function(){
			payment();
		})
	})
	
	const cNum=document.getElementsByClassName("cartNum");
    function payment(data){
		let price=$("#totalPrice").val();
		let memberName=$("#kakaoPay").attr("data-name");
		let id=$("#kakaoPay").attr("data-id");
		let cartNum=[];
		for(c of cNum){
	        cartNum.push(c.value);
	    }
		
        IMP.init('imp86596208'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
  	    IMP.request_pay({
            pg : 'kakaopay.TC0ONETIME',
            pay_method : 'card',
            merchant_uid : 'TEST' + new Date().getTime(),
            name : 'TRAVELER',
            amount : price,
            buyer_email : 'c@naver.com',
            buyer_name : memberName,
            buyer_tel : '01011111111'
          	//buyer_addr : '서울특별시 강남구',
            //buyer_postcode : '123-456', */
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ){
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
                        	alert("다시 시도해주세요.");
                        }else{
                        	alert("결제가 완료되었습니다.");
            				location.href="../pay/detailOrder?num="+data;
                     
                        }
                    },
                    error:function(){
                        alert("실패")
                    }
                })
            	
            	
            	
            	//alert("완료->imp_uid: "+rsp.imp_uid+" /merchant_uid(orderKey) : "+rsp.merchant_uid);
            	
            }else{
            	alert("실패:코드("+rsp.error_code+")/메세지("+rsp.error_meg+")");
            }
        });
	}
    
    </script>

</body>
</html>