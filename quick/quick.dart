

void quicksort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivot = partition(arr, low, high);
    quicksort(arr, low, pivot - 1);
    quicksort(arr, pivot + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;

  for (int j = low; j <= high - 1; j++) {
    if (arr[j] < pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}


void main() {
  List<int> arr = [10, 7, 10, 9, 10, 5,1,10,10,10,2,2,5,8,62,544,10];
  quicksort(arr, 0, arr.length - 1);
  print(arr);
}