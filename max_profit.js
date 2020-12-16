// Given an array of prices, return the maximum profit you can achieve
//
// @param prices [Array<Integer>] an array of prices by day
// @param fee [Integer] the fee per transaction
// @return [Integer] the maximum profit

module.exports = function max_profit(prices, fee) {
    
    let arrayMin = (arr) => {
      var len = arr.length, min = Infinity;
      while (len--) {
        if (Number(arr[len]) < min) {
          min = Number(arr[len]);
        }
      }
      return min;
    };
    
    
    let arrayMax = (arr) => {
      var len = arr.length, max = -Infinity;
      while (len--) {
        if (Number(arr[len]) > max) {
          max = Number(arr[len]);
        }
      }
      return max;
    };
    
    var earlyPrices = prices.splice( 0, prices.indexOf(arrayMin(prices)) );
    
    return arrayMax(prices) - earlyPrices.pop() - fee;
};
