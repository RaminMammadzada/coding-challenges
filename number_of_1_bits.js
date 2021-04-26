/**
 * @param {number} n - a positive integer
 * @return {number}
 */

let counter = 0

var hammingWeight = function(n) {
    if(n <= 2 ){
        if( n === 2){
            return counter + 1;
        } else if(n === 1){
            return counter + 1;
        } else {
            return counter;
        }
    }
    
    if(n%2 !== 0){
        counter += 1;
    }
    
    
    return hammingWeight(n/2);
};



