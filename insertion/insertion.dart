

void main(List<String> args) {
  List arr = [1, 55, 2, 4, 6, 0];
  int n = arr.length;
  //start with one as 0th element cannot be compared to anything previous.
  for (int i = 1; i < n; i++) {
    //keep the ith element in key variable so that later after moving all larger elements than key to
    //one step forward we can place the key in correct position
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      //check elements on left side of array from i
      
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }

  print("Sorted array is $arr");
}
