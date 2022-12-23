  // Write your code here
  let arr = [1,2,0,-1,-2];
  let posetiveCount = 0;
  let negativeCount = 0;
  let zeroCount = 0;
  arr.forEach((num) => {
      // Count Posetive Numbers
      if(num > 0)  ++posetiveCount;
  
      // Count Negative count
      if(num < 0) ++negativeCount;
  
      // Count Zero 
      if(num == 0) ++zeroCount;
  }); 
  
  // Calculationg Posetive Ration with 6 desimal
  let posetiveNumRatio =  posetiveCount / arr.length;
  let negativeNumRatio = negativeCount / arr.length;
  let zeroNumRatio = zeroCount / arr.length;
  
  // Console The Result
  return console.log(posetiveNumRatio.toFixed(6) + '\n' + negativeNumRatio.toFixed(6)  + '\n' + zeroNumRatio.toFixed(6));