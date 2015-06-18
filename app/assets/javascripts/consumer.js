$(document).ready(function() {
  socket.on('message', function (channel, message) {
    $(".messages ul").append("<li><p>" + message.msg + "</p></li>");
  });
});
