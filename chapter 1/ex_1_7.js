const average = (x, y) => (x + y) / 2;
const improve = (guess, x) => average(guess, (x / guess));
const smallEnough = x => x / 100;
const goodEnough = (guess, x) => Math.abs((guess ** 2) - x) < smallEnough(x);

const sqrtIter = (guess, x) => {
  return goodEnough(guess, x) ? guess : sqrtIter(improve(guess, x), x);
};

console.log(sqrtIter(1, 9));
