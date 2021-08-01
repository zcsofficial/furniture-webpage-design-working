$(document).ready(function () {
    $.ajax({
        type: 'POST',
        url: 'phpscript/dbconnection.php',
        success: function (response) {
            alert(response);
        }
    });
});
