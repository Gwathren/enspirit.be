$(function(){

  /* test 3 -- jQuery */
  var clickMe = document.getElementById("clickMe");
  $(clickMe).click(function() {
    $('.span').toggleClass('span-unvisible'),
    $('.menu').toggleClass('menu-open'),
    $('.nav-overlayer').toggleClass('nav-overlayer-open');
  });


  var mql = window.matchMedia("screen and (min-width: 768px)")
  if (mql.matches){
   /*alert("Window is 768px or wider")*/

    /* plan -2 */
    var controller1 = new ScrollMagic.Controller();
    var scene1 = new ScrollMagic.Scene({
       offset: 0,
       duration:600
     })
    .setTween("#animate-2", {y:30})
    /*.addIndicators({name:"-2"})*/
    .addTo(controller1);

    /* plan -1 */
    var controller2 = new ScrollMagic.Controller();
    var scene2 = new ScrollMagic.Scene({
       offset: 0,
       duration:800
     })
    .setTween("#animate-1", {y:15})
    /*.addIndicators({name:"-1"})*/
    .addTo(controller2);

    /* plan 1 */
    var controller3 = new ScrollMagic.Controller();
    var scene3 = new ScrollMagic.Scene({
       offset: 0,
       duration:800
     })
    .setTween("#animate1", {y:0})
    /*.addIndicators({name:"1"})*/
    .addTo(controller3);

    /* plan 2 */
    var controller4 = new ScrollMagic.Controller();
    var scene4 = new ScrollMagic.Scene({
       offset: 0,
       duration:800
     })
    .setTween("#animate2", {y:50})
    /*.addIndicators({name:"2"})*/
    .addTo(controller4);

    /* plan 3 */
    var controller5 = new ScrollMagic.Controller();
    var scene5 = new ScrollMagic.Scene({
      offset: 0,
      duration:800
    })
    .setTween("#animate3", {y:40})
    /*.addIndicators({name:"3"})*/
    .addTo(controller5);

    /* plan 4 */
    var controller6 = new ScrollMagic.Controller();
    var scene6 = new ScrollMagic.Scene({
      offset: 0,
      duration:800
    })
    .setTween("#animate4", {y:30})
    /*.addIndicators({name:"4"})*/
    .addTo(controller6);

    /* plan 5 */
    var controller7 = new ScrollMagic.Controller();
    var scene7 = new ScrollMagic.Scene({
      offset: 0,
      duration:800
    })
    .setTween("#animate4", {y:15})
    /*.addIndicators({name:"4"})*/
    .addTo(controller7);

  }
  else{
   // do something else
  }

});
