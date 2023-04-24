void main(List<String> args) {
  int i, j;
  List arr = [32, 1, 4, 5, 22, 5, 89];
  int n = arr.length;

  for (i = 0; i < n; i++) {
    int minimum = i;
    for (j = i + 1; j < n; j++) {
      if (arr[j] < arr[minimum]) {
        minimum = j;
      }
    }
   
    if(arr[i]!=arr[minimum]){
      arr[i] = arr[i] + arr[minimum];
    arr[minimum] = arr[i] - arr[minimum];
    arr[i] = arr[i] - arr[minimum];
    }
   
  }

  print("Sorted array is $arr");
}
