$(document).ready(function () {

    $("#signup").click(function (e) {
        //e.preventDefault();
        var firstname = $("#fname").val();
        var lastname = $("#lname").val();
        var emailId = $("#email").val();
        var mobilevalue = $("#mobile").val();
        var passwordvalue = $("#password").val();

        var formData ={
            fname:firstname, 
            lname:lastname, 
            email:emailId, 
            password:passwordvalue, 
            mobile:mobilevalue
        };

        $.ajax({
            type: 'POST',
            url: 'phpscript/signup.php',
            data: formData,
            success: function (response) {
                console.log(response);
                if(response){
                    window.location.replace('index.html');
                }
            }
        });

        
    });
});