const category = document.getElementsByClassName('category');

category.addEventListener("click",function(){
    console.log(category.getAttribute("data-cat"))
})