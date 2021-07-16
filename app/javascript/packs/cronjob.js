
function cronStateUpdater(){
  var url = "https://api.crontogo.com/organizations/2cc0a004-363e-4405-8395-0a96ebdf0f92/jobs/4e91294f-e6de-4dc0-801d-7e66af3565c5";

  var xhr = new XMLHttpRequest();
  xhr.open("PATCH", url);

  xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJPcmdhbml6YXRpb25JZCI6IjJjYzBhMDA0LTM2M2UtNDQwNS04Mzk1LTBhOTZlYmRmMGY5MiIsIlBhcnRuZXIiOiJoZXJva3UiLCJpYXQiOjE2MjY0MzAwODAsImlzcyI6ImNyb250b2dvLXByb2QiLCJzdWIiOiIyY2MwYTAwNC0zNjNlLTQ0MDUtODM5NS0wYTk2ZWJkZjBmOTIifQ.AbobHOOID0_t0zCKZww5ucGhgVNYe5-zGIKkA0n7uRBBbCbc8jeYR7y5NIjOdH3k7dNgcJBbuNr7eil4b3attA");
  xhr.setRequestHeader("Content-type", "application/json");

  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4) {
        console.log(xhr.status);
        console.log(xhr.responseText);
    }};

  var data = `{
      "State": "enabled"
    }`;

  xhr.send(data);

}

function cronStatepause(){
  var url = "https://api.crontogo.com/organizations/2cc0a004-363e-4405-8395-0a96ebdf0f92/jobs/4e91294f-e6de-4dc0-801d-7e66af3565c5";

  var xhr = new XMLHttpRequest();
  xhr.open("PATCH", url);

  xhr.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJPcmdhbml6YXRpb25JZCI6IjJjYzBhMDA0LTM2M2UtNDQwNS04Mzk1LTBhOTZlYmRmMGY5MiIsIlBhcnRuZXIiOiJoZXJva3UiLCJpYXQiOjE2MjY0MzAwODAsImlzcyI6ImNyb250b2dvLXByb2QiLCJzdWIiOiIyY2MwYTAwNC0zNjNlLTQ0MDUtODM5NS0wYTk2ZWJkZjBmOTIifQ.AbobHOOID0_t0zCKZww5ucGhgVNYe5-zGIKkA0n7uRBBbCbc8jeYR7y5NIjOdH3k7dNgcJBbuNr7eil4b3attA");
  xhr.setRequestHeader("Content-type", "application/json");

  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4) {
        console.log(xhr.status);
        console.log(xhr.responseText);
    }};

  var data = `{
      "State": "paused"
    }`;

  xhr.send(data);

}
window.cronStateUpdater = cronStateUpdater;