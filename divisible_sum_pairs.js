let divisibleSumPairs = function (k, ar) {

  let counter = 0;
  for (let i = 0; i < ar.length; i++) {

    for (let j = i; j < ar.length; j++) {
      if (i < j) {
        if ((ar[i] + ar[j]) % k === 0) {
          counter += 1;
        }
      }
    }
  }

  return counter;


};

console.log(divisibleSumPairs(5, [1, 2, 3, 4, 5, 6]));
