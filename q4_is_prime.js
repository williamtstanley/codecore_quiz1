//check if number is prime true or false returned

function is_prime(n) {
    if (n <= 1) {
        return false;
    } else if (n <= 3) {
        return true;
    }else if (n % 2 === 0) {
        return false;
    }else {
        for (var i = 3; i < Math.round(Math.sqrt(n)) + 1; i += 2) {
            if (n % i === 0) {
                return false;
            }
        }
    }
    return true;
}

console.log("1" + is_prime(1));
console.log("2" + is_prime(2));
console.log("3" + is_prime(3));
console.log("5" + is_prime(5));

console.log("9" + is_prime(9));
console.log("14" + is_prime(14));
console.log("104729" + is_prime(104729));


