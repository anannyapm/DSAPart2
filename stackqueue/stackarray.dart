class Stack {
  int maxSize =1000 ;
  var stackArray = [];
  int top = -1;

  void push(var value) {
    if (top >= maxSize - 1) {
      print("Stack Overflow! Cannot Insert");
    } else {
      stackArray.add(value);
      top++;
      print("$value added to Stack.");
    }
  }

  void pop() {
    if (top < 0) {
      print("Stack underflow! Cannot delete");
    } else {
      stackArray.removeLast();
      top--;
      print("value is deleted");
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
  stack.pop();
  stack.display();
  stack.push(20);
  stack.pop();

  stack.push(9);
  stack.push(65);
  stack.push(6);
  stack.push(36);
  stack.display();

  stack.pop();
  stack.display();
}
