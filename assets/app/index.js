var controller = new ScrollMagic.Controller();

var scene = new ScrollMagic.Scene(
  {triggerElement:"#trigger"}
)
.setTween('#plan1', 1, {y:200})
.addIndicators({name:"start"})
.addTo(controller);
