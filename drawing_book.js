function isOdd(num) {
    return (num % 2 != 0 ? true : false );
}

/*
 * Complete the pageCount function below.
 */
function pageCount(n, p) {
    /*
     * Write your code here.
     */
    
    if (p === 1 || p===n) return 0;
    
    if ( n-p === 1 ) {
        if ( isOdd(n)) return 0;
        else return 1;
    }
    
    if ( n-p > p ) {
        return Math.floor( p / 2 );
    }
    else {
        return Math.floor( (n-p) / 2 );
    }
    
    // This is an alternative solution, but edge case also must be included
    // return Math.floor( Math.min(p/2, (n-p)/2) );

}

console.log( pageCount(2,1) );