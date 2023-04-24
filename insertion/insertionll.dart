//sort and merge

sort(int n, List arr) {
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

void main(List<String> args) {
  List arr1 = [1, 55, 2, 4, 6, 0];
  List arr2 = [52, 10, 92];
  for (int val in arr2) {
    arr1.add(val);
  }
  sort(arr1.length, arr1);
  print(arr1);
}
