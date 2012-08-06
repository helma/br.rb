$(document).ready(function(){
  $("input").focus(function() {
    console.log("insertmode_on");
  });
    $("input").blur(function() {
    console.log("insertmode_off")
  });
});
