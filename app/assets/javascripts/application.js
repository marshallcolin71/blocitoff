var blocmetrics = {};
blocmetrics.report = function(eventName){
  var event = {event: { name: eventName }};

  // #2
  var request = new XMLHttpRequest();
  // #3
  request.open("POST", "http://localhost:3000/api/events", true);
  // #4
  request.setRequestHeader('Content-Type', 'application/json');
  // #5
  request.send(JSON.stringify(event));
 };
