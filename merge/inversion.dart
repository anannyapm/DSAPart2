int mergeSort(List<int> arr, int left, int right) {
  int invCount = 0;
  if (left < right) {
    int mid = (left + right) ~/ 2;
    invCount += mergeSort(arr, left, mid);
    invCount += mergeSort(arr, mid + 1, right);
    invCount += merge(arr, left, right, mid);
  }
  return invCount;
}

int merge(List<int> arr, int left, int right, int mid) {
  int invCount = 0;
  int n1 = mid - left + 1;
  int n2 = right - mid;

  List<int> leftArr = arr.sublist(left, left + n1);
  List<int> rightArr = arr.sublist(mid + 1, mid + 1 + n2);

  int i = 0;
  int j = 0;
  int k = left;
  while (i < n1 && j < n2) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
      invCount += n1 - i;
    }
    k++;
  }

  while (i < n1) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }

  while (j < n2) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }

  return invCount;
}

void main(List<String> args) {
  List<int> arr = [2, 3, 8, 6, 1];
  int invCount = mergeSort(arr, 0, arr.length - 1);
  print('Number of inversions: $invCount'); // Output: Number of inversions: 6
}