void main(List<String> args) {
  List arr = [1, 23, 4, 11, 6, 3, 44];
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n -i-1; j++) {
      if (arr[j] > arr[j + 1]) {
        arr[j] = arr[j] + arr[j + 1];
        arr[j + 1] = arr[j] - arr[j + 1];
        arr[j] = arr[j] - arr[j + 1];
      }
    }
  }

  print("Sorted array is $arr");
}
