function humanize(num){
    var ones = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine',
                'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
                'seventeen', 'eighteen', 'nineteen'];
    var tens = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty',
                'ninety'];

    var numString = num.toString();

    if (num < 0) throw new Error('Negative numbers are not supported.');

    if (num === 0) return 'zero';

    //the case of 1 - 20
    if (num < 20) {
        return ones[num];
    }

    if (numString.length === 2) {
        return tens[numString[0]] + ' ' + ones[numString[1]];
    }
}

// Complete the timeInWords function below.
function timeInWords(h, m) {
    var result = "";
    
    switch ( true ) {
        case ( m.toString(10) === "0"):
            result = humanize(h) + " o\' clock";
            break;
        case ( m === 1 ):
            result = humanize(m) + " minute" + " past " + humanize(h);
            break;
        case ( m < 15 ):
            result = humanize(m) + " minutes" + " past " + humanize(h);
            break;
        case ( m === 15 ):
            result = "quarter" + " past " + humanize(h);
            break;
        case ( m > 15 && m<30 ):
            result = humanize(m) + " minutes" + " past " + humanize(h);
            break;
        case ( m === 30 ):
            result = "half" + " past " + humanize(h);
            break;
        case ( m > 30 && m < 45 ):
            result = humanize( 60 - m ) + " minutes" + " to " + humanize( h + 1 );
            break;
        case ( m === 45 ):
            result = "quarter" + " to " + humanize( h + 1 );
            break;
        case ( m > 45 && m < 59):
            result = humanize( 60 - m ) + " minutes" + " to " + humanize( h+1 );
    }
    
    return result;

}


console.log( timeInWords(1, 1) );