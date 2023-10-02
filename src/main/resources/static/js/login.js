function login() {
    let loginData = JSON.stringify({
        "id" : $('#id').val(),
        "pw" : $('#pw').val(),
        "memory_id" : $('#memory_id').val()
    })
    $.ajax({
        type : 'POST',
        url : '/MoraeTDAT/login/process',
        async : true,
        dataType:'JSON',
        contentType: "application/json; charset=UTF-8",
        data : loginData,
        success: function(data) {
            if(data.login){
                alert(`${data.id}님 반갑습니다 :)`);
                window.location.href = '/MoraeTDAT/home';
            } else {
                alert('로그인에 실패했습니다.');
            }

        }
    });
}