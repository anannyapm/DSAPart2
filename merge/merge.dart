void merge(List<int> arr, int left, int right, int mid) {
  List<int> sub1 = arr.sublist(left, mid + 1);
  List<int> sub2 = arr.sublist(mid + 1, right + 1);
  int n1 = sub1.length;
  int n2 = sub2.length;
  int k = left;
  int i = 0;
  int j = 0;
  while (i < n1 && j < n2) {
    if (sub1[i] <= sub2[j]) {
      arr[k] = sub1[i];
      i++;
    } else {
      arr[k] = sub2[j];
      j++;
    }
    k++;
  }
  while (i < n1) {
    arr[k] = sub1[i];
    i++;
    k++;
  }
  while (j < n2) {
    arr[k] = sub2[j];
    j++;
    k++;
  }
}

void sort(List<int> arr, int left, int right) {
  if (left < right) {
    int middle = (left + right) ~/ 2;
    sort(arr, left, middle);
    sort(arr, middle + 1, right);
    merge(arr, left, right, middle);
  }
}

void main(List<String> args) {
  List<int> arr = [2, 1, 4, 5, 3, 6, 21, 5];
  sort(arr, 0, arr.length - 1);
  print(arr);
}
