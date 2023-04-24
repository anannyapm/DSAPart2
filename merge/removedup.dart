List<int> removeDuplicates(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = (arr.length / 2).floor();
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);
  left = removeDuplicates(left);
  right = removeDuplicates(right);
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> merged = [];
  int i = 0;
  int j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      merged.add(left[i]);
      i++;
    } else if (left[i] > right[j]) {
      merged.add(right[j]);
      j++;
    } else {
      merged.add(left[i]);
      i++;
      j++;
    }
  }
  while (i < left.length) {
    merged.add(left[i]);
    i++;
  }
  while (j < right.length) {
    merged.add(right[j]);
    j++;
  }
  return merged;
}

void main() {
  List<int> arr = [1, 2, 2, 3, 3, 3, 4, 5, 5];
  List<int> result = removeDuplicates(arr);
  print(result); 
}
