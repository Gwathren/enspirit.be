$(function(){

  /* test 3 -- jQuery */
  var clickMe = document.getElementById("clickMe");
  $(clickMe).click(function() {
    $('.mainnav-tablet').toggleClass('mainnav-tablet-open');
  });


  /* test 4 -- ScrollMagic */
  var controller = new ScrollMagic.Controller();

  var plan1 = document.getElementById("plan1"),
      trigger1 = document.getElementById("trigger1"),
      tween1 = TweenMax.to(plan1, 2, {opacity:0.5});

  var scene = new ScrollMagic.Scene(
    {triggerElement:trigger1, duration:100}
  )
  .setTween(tween1)
  .addIndicators({name:"start"})
  .addTo(controller);

});
