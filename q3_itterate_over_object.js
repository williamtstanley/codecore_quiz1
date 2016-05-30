// print province and number of cities

var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};
var output = "";
for (var key in majorCities){
    output += key + " has " + majorCities[key].length + " main cities. ";
}

console.log(output);