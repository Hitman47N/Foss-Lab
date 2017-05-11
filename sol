long result = 0, resultSolutions = 0;
 
for (long p = 2; p <= 1000; p += 2) {
    int numberOfSolutions = 0;
    for (long a = 2; a < (p/3); a++) {
          if(p*(p-2*a) % (2*(p-a)) == 0){
              numberOfSolutions++;
          }
      }
      if(numberOfSolutions > resultSolutions){
        resultSolutions = numberOfSolutions;
        result = p;
    }
}


e2=` expr $p - $e1 `
e3=` expr $p * $e3 `
e4=` expr $p - $a `
e5=` expr $e4 * 2`
fin=` expr $e3 % $e5 `
