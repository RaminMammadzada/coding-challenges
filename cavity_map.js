function neighbors(arr, m, n) {
  // define what a neighbor is
  let v = [[0, 1],[1, 0],[0, -1],[-1, 0]]
  // filter edges & map
  return v.filter(([h, j]) => h + m >= 0 && h + m < arr.length && j + n >= 0 && j + n < arr[0].length)
    .map(([h, j]) => arr[h + m][j + n])

}

String.prototype.replaceAt = function(index, replacement) {
    return this.substr(0, index) + replacement + this.substr(index + replacement.length);
}

// Complete the cavityMap function below.
function cavityMap(grid) {
    let copiedGrid = JSON.parse(JSON.stringify(grid));
    
    for(let row = 0; row < grid.length - 1; row += 1){
        for( let column = 0; column < grid[0].length - 1; column += 1){
            
            if ( row === 0 || column === 0 ){ continue; }
            
            let adjacent_elements = neighbors(grid, row, column);
            
            let biggerElements = adjacent_elements.filter( element => parseFloat(element) > parseFloat(grid[row][column]) )
            
            if( biggerElements.length === 0 ){
                copiedGrid[row] = (copiedGrid[row]).replaceAt(column, "X");
                console.log(`>>> ${copiedGrid[row]}` );
                
            }
        }
    }
    
    return copiedGrid;
}
