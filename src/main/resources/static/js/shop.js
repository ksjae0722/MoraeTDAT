function cart(productnum, userid){

    if(userid==="" || userid==='null'){
        alert('로그인 후 사용가능합니다')
    } else{
        let cartdata = JSON.stringify({"productnum" : productnum});
        $.ajax({
            type : 'POST',
            url: '/MoraeTDAT/shop/cart',
            async : true,
            dataType:'JSON',
            contentType: "application/json; charset=UTF-8",
            data : cartdata,
            success : function (data){
                if(data.addcart){
                    alert('장바구니에 넣었습니다');
                } else {
                    alert('장바구니에 넣는 데 실패했습니다');
                }
            }
        });
    }
}

function heart(){

}