var display = document.querySelector(".display");
var buttons = document.querySelectorAll(".btn");

// Add click event listener to each button
for (var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", function() {
    var value = this.value;
    if (value == "C") {
      display.value = "";
    } else if (value == "=") {
      try {
        display.value = eval(display.value);
      } catch (e) {
        display.value = "Error";
      }
    } else {
      display.value += value;
    }
  });
}
