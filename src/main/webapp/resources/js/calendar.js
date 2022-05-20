$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년',
    minDate: 0 //지난날 선택 불기
});

//여행지 detail 페이지에 달력 추가
function calendar(){
    $("#datepicker1").datepicker();
    
    $('#datepicker1').change(function(){
        let date = $('#datepicker1').datepicker({ dateFormat: 'dd-mm-yy' }).val();
        console.log(date);
    
        $('#dateResult').val(date);
    
    })
    
}
