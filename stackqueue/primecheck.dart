bool primeCheck(int num) {
  if (num == 0 || num == 1) {
    return false;
  }
  for (int i = 2; i < num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

class Stack {
  int maxSize = 1000;
  var stackArray = [];
  int top = -1;

  void push(var value) {
    if (top >= maxSize - 1) {
      print("Stack Overflow! Cannot Insert");
    } else {
      stackArray.add(value);
      top++;
      //print("$value added to Stack.");
    }
  }

  int? pop() {
    if (top < 0) {
      print("Stack underflow! Cannot delete");
      return null;
    } else {
      int val = stackArray[top];
      stackArray.removeLast();
      top--;
      //print("value is deleted");
      return val;
    }
  }

  void display() {
    if (top < 0) {
      print("Empty Stack");
    } else {
      for (int i = top; i >= 0; i--) {
        print(stackArray[i]);
        print("---");
      }
    }
  }
}

void main(List<String> args) {
  Stack stack = Stack();

  stack.push(7);
  stack.push(9);
  stack.push(3);
  stack.push(6);
  stack.push(36);
  stack.display();
  print("-----------------------");
  Stack out = Stack();
  while (stack.top >= 0) {
    int? val = stack.pop();

    if (val != null) {
      bool res = primeCheck(val);

      if (res != true) {
        out.push(val);
      }
    }
  }
  out.display();
}
