// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.

function nthEven(n){
    var output = [0];
    for (var i = 1; i <= n; i++) {
        output[i] = i * 2;
    }
    return output.slice(1);
}
console.log(nthEven(10));