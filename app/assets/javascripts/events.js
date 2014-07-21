$( document ).ready(function() {
    $("#ex6").slider();
    $("#ex6").on('slide', function(slideEvt) {
    $("#ex6SliderVal").text(slideEvt.value);
    });
});
