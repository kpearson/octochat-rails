$(document).ready(function() {
  $("#new_message").on("ajax:complete", function(e, data, status, xhr) {
    var message = JSON.parse(data.responseText).message;
    $(".messages ul").append("<li><p>" + message.body + "</p></li>");
    $("#message_body").val("");
  });
  socket.on('message', function (data) {
    console.log("message received:");
    console.log(data);
    // var message = JSON.parse(data);
    // $(".messages ul").append("<li><p>" + message.body + "</p></li>");
  });
});
