console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
      type: 'GET',
      url: "http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=26b29238b4196e6fbbb242d137888fc7",
      success(data) {
        console.log("We have your weather!");
        console.log(data);
      },
      error() {
        console.error("An error occurred.");
      },
   });
// Add another console log here, outside your AJAX request
console.log("Another console.log");
