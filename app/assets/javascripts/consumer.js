$(document).ready(function() {
    socket.on('message', function (channel, message) {
        $(".messages ul").append("<li><p>" + message.msg + "</p></li>");
    });

    $("#send").click(function () {
        var $userMessage = $("#user-message").val();
        var slug = window.location.pathname.replace("/", "");
        var message = { message: { body: $userMessage, slug: slug } }
        $.post("/messages", message)
        .then(function (success) {
            console.log("successful post");
        })
        $("#user-message").val("");
    });
});
