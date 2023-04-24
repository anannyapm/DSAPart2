class Node<T> {
  T value;
  Node? next;
  Node({required this.value});
}

class Stack<T> {
  Node? top;

  void push(T value) {
    Node? newNode = Node(value: value);
    newNode.next = top;
    top = newNode;
    print("$value added to Stack.");
  }

  void pop() {
    if (top == null) {
      print("Stack empty!");
    } else {
      Node? temp = top;
      temp?.next = null;
      top = top!.next;
      print("${temp!.value} is deleted");
    }
  }

  void displayStack() {
    if (top == null) {
      print("Stack empty!");
      return;
    }
    print("Stack contains \n---");
    Node? temp = top;
    while (temp != null) {
      print("${temp.value}\n---");
      temp = temp.next;
    }
  }

  void peek() {
    if (top == null) {
      print("Stack empty!");
      return;
    }
    print("${top!.value} is the top");
  }
}

void main() {
  Stack stack = Stack();
  stack.displayStack();

  stack.pop();
  stack.push(25);
  stack.displayStack();

  stack.pop();
  stack.push(56);
  stack.push(9);
  stack.push(3);

  stack.peek();

  stack.displayStack();
}
