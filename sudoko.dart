bool feasible(List matrix, int i, int j, int value){
  bool flag = true;
  for(int row=0; row<4; row++){
    if(matrix[row][j]==value){
      flag = false;
      break;
    }
  }

  for(int col=0; col<4; col++){
    if(matrix[i][col]==value){
      flag = false;
      break;
    }
  }
  return flag;
}

void main() {
  List matrix = [[4, 3, 0, 1], [1, 2, 3, 0], [0, 0, 2, 1], [2, 1, 0, 0], ];
  //print(matrix);
  List emptyIndices = [];
  for(int i=0; i<4; i++){
    for(int j=0; j<4; j++){
      if(matrix[i][j] == 0){
        emptyIndices.add([i, j]);
      }
    }
  }

  //print(emptyIndices);
  for(int i=1; i<5; i++){
    for(int j=0; j<emptyIndices.length; j++){
      if(feasible(matrix, emptyIndices[0], emptyIndices[1], i)){
        matrix[emptyIndices[0]][emptyIndices[1]] = i;
      }
    }
  }

  print(matrix);



}
