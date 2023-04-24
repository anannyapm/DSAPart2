void merge(List<int> arr, int left, int right, int mid) {
  //arr=[2,1,4,5,3,6,21]
  //find size of subarrays

  int n1 = mid - left + 1;
  int n2 = right - mid;
   List<int> sub1 = List<int>.filled(n1, 0);
  List<int> sub2 = List<int>.filled(n2, 0);
  /*Copy data to temp arrays*/
  for (int i = 0; i < n1; i++) {
    sub1[i] = arr[left + i];
  }

  for (int j = 0; j < n2; j++) sub2[j] = arr[mid + 1 + j];



  int k = left;
  int i = 0;
  int j = 0;
  while (i < n1 && j < n2) {
    if (sub1[i] <= sub2[j]) {
      //modifying original array. Here we have already taken a copy of array to its ubarrays so overwriting array wont be a problem.
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

void sort(arr, left, right) {
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
