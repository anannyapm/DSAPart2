void main(List<String> args) {
  int i, j;
  List arr = [32, 1, 4, 5, 22, 5, 89];
  int n = arr.length;

  for (i = 0; i < n; i++) {
    int maximum = i;
    for (j = i + 1; j < n; j++) {
      if (arr[j] > arr[maximum]) {
        maximum = j;
      }
    }
   
    if(arr[i]!=arr[maximum]){
      arr[i] = arr[i] + arr[maximum];
    arr[maximum] = arr[i] - arr[maximum];
    arr[i] = arr[i] - arr[maximum];
    }
   
  }

  print("Sorted array is $arr");
}
