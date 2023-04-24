/* int quicksort(List<int> arr, int left, int right) {
  //stopping condition
  //if left greater than right then that means partition over, so only one element left, return it.
  if (left >= right) {
    return arr[left];
  }

  //partition function part written here
  int pivot = arr[left];
  int i = left + 1;
  int j = right;

  while (i <= j) {
    if (arr[i] <= pivot) {
      i++;
    } else if (arr[j] > pivot) {
      j--;
    } else {
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  int temp = arr[left];
  arr[left] = arr[j];
  arr[j] = temp;

  int sum1 = quicksort(arr, left, j - 1);
  int sum2 = quicksort(arr, j + 1, right);
  print(arr[j]);
  print(sum1);
  print(sum2);
  print("---------");

  //function will return smallest of sum1 and sum2 added with current pivot element(which will obviosuly be the last individual values at final breakdown)
  return sum1 < sum2 ? sum1 + arr[j] : sum2 + arr[j];
} */



int minSum(List<int> arr) {
  int n = arr.length;
  int minSum = double.maxFinite.toInt();

  for (int i = 0; i < n; i++) {
    int current_sum = arr[i];
    for (int j = i + 1; j < n; j++) {
      current_sum += arr[j];
      if (current_sum < minSum) minSum = current_sum;
    }
  }

  return minSum;
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
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

void sort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);
    sort(arr, low, pi - 1);
    sort(arr, pi + 1, high);
  }
}

int subarraySum(List<int> arr) {
  sort(arr, 0, arr.length - 1);
  return minSum(arr);
}

void main() {
  List<int> arr = [3, -4, 2, -3, -1, 7, -5];
  //int minSum = quicksort(arr, 0, arr.length - 1);
  int minSum = subarraySum(arr);
  print(arr);
  //here -5+-4+-1 from subarray [-5,-4,-3,-1]
  print("Minimum sum: $minSum");
}
