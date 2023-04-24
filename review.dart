class Stack {
  int front = -1;
  int rear = -1;
  List stack = List.filled(10, null);

  void enqueue(int value) {
    if (rear >= stack.length) {
      print("overflow.cannot insert");
      return;
    }
    if (front == -1) {
      front = 0;
    }
    rear++;
    stack[rear] = value;
  }

  void dequeue() {
    if (front < 0) {
      print("underflow.not elements to delete");
      return;
    }
    if (front == rear) {
      front = -1;
      rear = -1;
      return;
    }
    stack[front] = null;
    front++;
  }

  void peek() {
    if (front < 0) {
      print("no elements");
      return;
    }
    print("front");
    print(stack[front]);
  }

  void display() {
    if (front < 0) {
      print("no elements");
      return;
    }

    for (int i = front; i <= rear; i++) {
      print(stack[i]);
    }
  }
}

void main(List<String> args) {
  Stack st = Stack();
  st.enqueue(25);
  st.enqueue(52);
  st.display();
  print("-----------");
  st.dequeue();
  st.display();
  st.peek();
  print("-----------");

  st.dequeue();
  st.display();
  st.dequeue();
}
