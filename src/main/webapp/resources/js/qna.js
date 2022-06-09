const btn = document.getElementsByClassName('btnRe')
for(b of btn){
    let num=b.getAttribute("data-num");

    $('#deleteBtn'+num).click(function(){
        console.log("click");
        let  check = window.confirm("삭제하시겠습니까?");
        if(!check){
            return;
          }
        let selector=$(this);
        $.ajax({
            type:"POST",
            url:"./delete",
            data:{
                num:num
            },
            success:function(data){
                if(data.trim()=='1'){
                    $(selector).parent().parent().remove();
                    alert("삭제 되었습니다.");
                    window.location.replace('./list')
                }
            },
            error:function(){
                alert("삭제 실패")
            }

        })
  })
}