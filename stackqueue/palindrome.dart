List stack = [];
int top = -1;
push(String val) {
  stack.add(val);
  top++;
}

String pop() {
  var s = stack[top];
  stack.removeLast();
  top--;
  return s;
}

bool isPalindrome(String s) {
  int len = s.length ~/ 2;
  for (int i = 0; i < len; i++) {
    push(s[i]);
  }
  int i = len;
  if (s.length % 2 != 0) {
    i++;
  }

  while (top > 0) {
    var out = pop();

    if (out != s[i]) {
      return false;
    }
    i--;
  }
  return true;
}

void main(List<String> args) {
  if (isPalindrome("amma")) {
    print("palindrome");
  } else {
    print("Not palindrome");
  }
}
