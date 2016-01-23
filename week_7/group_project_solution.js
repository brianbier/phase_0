
// Sum Function
function sum(numberArray){
  var sumOfArray = 0
  for(var i = 0; i < numberArray.length;i++){
    sumOfArray = sumOfArray + numberArray[i]
  };
  return sumOfArray
}

array = [1,2,3,4,5,6,7,8]

// console.log(sum(array));


// Mean Function

function mean(numberArray){
  var sumOfArray = 0
  var sizeofArray = numberArray.length

  for(var i = 0; i < sizeofArray ;i++){
    sumOfArray = sumOfArray + numberArray[i]
  };
  var mean = sumOfArray / sizeofArray
  return mean
}

array = [1,2,3,4,5,6,7,8]

// console.log(mean(array))


// Medium Function

function medium(numberArray){
var sizeofArray = numberArray.length
  if(sizeofArray % 2 !== 0){
    var oddCenterIndex = Math.round(sizeofArray / 2);
    return oddCenterIndex;
  } else if(sizeofArray % 2 === 0){
    var evenCenterIndex1 = Math.ceil(sizeofArray / 2);
    var evenCenterIndex2 = Math.floor(sizeofArray / 2); 
    return  (evenCenterIndex1 + evenCenterIndex2) / 2
  }

}
array = [1,2,3,4,5,6,7,8,3,1]
console.log(medium(array));


