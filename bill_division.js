let billDivision = function (bill, k, b) {

  bill.splice(k, 1)

  let total = bill.reduce((a, b) => a + b, 0);
  let per_person = total / 2;
  console.log(`Updated bill: ${bill}`);
  console.log(`per person: ${per_person}`)

  if (b === per_person) {
    return 'Bon Appetit';
  } else if (b > per_person) {
    return b - per_person;
  } else if (b < per_person) {
    return per_person - b;
  }

};

console.log(billDivision([3, 10, 2, 9], 1, 12));
