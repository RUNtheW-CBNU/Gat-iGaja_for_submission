link = "https://api.openweathermap.org/data/2.5/weather?units=metric&q=paris&appid=367d74c016da36974549f64352646b5a";
var request = new XMLHttpRequest();
request.open('GET',link,true);
request.onload=function () {
    var obj = JSON.parse(this.response);
    console.log(obj);
    document.getElementById('weather').innerHTML = obj.weather[0].description;
    document.getElementById('location').innerHTML = obj.name + ", "+ obj.sys.country;
    document.getElementById('temp').innerHTML = obj.main.temp ;
    document.getElementById('icon').src = "http://openweathermap.org/img/w/"+obj.weather[0].icon+".png";
}
if(request.status==200){
    console.log("Error");
}
request.send();