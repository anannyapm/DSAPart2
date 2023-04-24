class Queue {
  int front = -1;
  int rear = -1;
  int size = 1000;
  List queue = [];

  void enqueue(int val) {
    if (rear >= size - 1) {
      print("Overflow!!!");
      return;
    }

    if (front == -1 && rear == -1) {
      front = 0;
    }
    rear++;
    queue.add(val);
    print("$val added.");
  }

  void dequeue() {
    if (front == -1) {
      print("Underflow");
    } else {
      int val = queue[front];
      front++;
      if (front > rear) {
        front = -1;
        rear = -1;
      }
      print("$val is deleted!");
    }
  }

  void display() {
    print("----------------\n----------------\nQueue Data\n");

    if (front == -1) {
      print("Queue empty");
      print("----------------\n----------------");

      return;
    }
    for (int i = front; i <= rear; i++) {
      print(queue[i]);
    }
    print("----------------\n----------------");
  }
}

void main(List<String> args) {
  Queue queuedata = Queue();
  queuedata.enqueue(25);
  queuedata.enqueue(5);
  queuedata.enqueue(21);
  queuedata.display();
  queuedata.dequeue();
  queuedata.dequeue();
  queuedata.dequeue();
  queuedata.dequeue();
  queuedata.display();
  print("front - ${queuedata.front}");

  queuedata.enqueue(78);
  queuedata.display();
  print("front - ${queuedata.front}");


}
