var twoArrEqual = function (arr1, arr2) { 
    // If lengths of array are not equal means 
    // array are not equal 
    if (arr1.length !== arr2.length) 
        return false;
  
    // Sort both arrays 
    arr1.sort();
    arr2.sort();
  
    // Linearly compare elements 
    for (let i = 0; i < arr1.length; i += 1){ 
        if (arr1[i] !== arr2[i]) 
            return false;
    }
  
    // If all elements were same. 
    return true;
}

/**
 * @param {number[]} nums
 * @return {number[][]}
 */
var threeSum = function(nums) {
    
    if(nums.length < 3){
        return [];
    }
    
    const result_arrs = []
    
    for(let i=0; i < nums.length; i += 1){
        for(let j=i + 1; j < nums.length; j += 1){
            for(let k=j + 1; k < nums.length; k += 1){
                 if( ( nums[i] + nums[j] + nums[k] ) === 0 ){
                     let candidate = [ nums[i], nums[j], nums[k] ];
                     let is_there_similar = false;
                     
                     result_arrs.forEach(arr => {
                         if( twoArrEqual(arr, candidate) ){
                             is_there_similar = true;
                         }
                     });
                     
                     if(!is_there_similar){
                         result_arrs.push(candidate);
                     }
                 }
            }   
        }   
    }
    return result_arrs;
};
