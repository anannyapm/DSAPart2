int mergeSort(List<int> arr, int k) {

  arr = sort(arr);
  return arr[k - 1];
}

List<int> sort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = arr.length ~/ 2;
  List<int> left = sort(arr.sublist(0, mid));
  List<int> right = sort(arr.sublist(mid));
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  return result;
}

void main() {
  List<int> arr = [4, 2, 6, 1, 22, 9, 8];
  int k = 3;
  int kthSmallest = mergeSort(arr, k);
  print("$arr\n----------------");
  print("$k th/rd smallest element is $kthSmallest");
}
