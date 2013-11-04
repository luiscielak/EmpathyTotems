// Custom Application JS


// function handleSliderChange(event, slider){
//   $('#vardiv').css('width', slider.value + '%');
//   $("#vardiv").text(slider.value + '%');
// }


// Handle Slider
// $('#slider').slider({
//   value: 7,
//   slide: handleSliderChange
// });w

function changeColor(){
  document.getElementById("input").style.backgroundColor = '#000000';
}


function updateSlider(sliderValue){
  // var sliderValue = this.sliderValue;

  console.log(sliderValue);
  document.getElementById("ui-slider-value").innerHTML = sliderValue;

}

