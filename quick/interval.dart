//Given intervals (start and end ), write a function that returns the array in that intervals in non-descending order of start times using quicksort.

List<int> quickSort(List<int> arr,int start,int end) {
  if (arr.length <= 1) {
    return arr;
  }
  
  int pivot = arr[arr.length - 1];
  List<int> less = [];
  List<int> greater = [];
  
  for (int i = 0; i < arr.length - 1; i++) {
    if(arr[i]<end && arr[i]>start){
      if (arr[i] < pivot ) {
      less.add(arr[i]);
    } else {
      greater.add(arr[i]);
    }
    }
    
  }
  
  List<int> sortedLess = quickSort(less,start,end);
  List<int> sortedGreater = quickSort(greater,start,end);
  
  return [...sortedLess, pivot, ...sortedGreater];
}

void main() {
  List<int> arr = [0,3, 55, 22, 71, 18, 100, 4, 16];
  List<int> sortedArr = quickSort(arr,2,99);
  print(sortedArr);
}
