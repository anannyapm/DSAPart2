class Node<T> {
  T value;
  Node? next;

  Node({required this.value});
}

class Queue<T> {
  Node? front;
  Node? rear;

  void enqueue(T value) {
    Node? newnode = Node(value: value);
    if (front == null) {
      front = newnode;
    } else {
      rear?.next = newnode;
    }
    rear = newnode;
  }

  void dequeue() {
    if (front == null) {
      print("No Values");
      return;
    }
    if (front == rear) {
      front = null;
      rear = null;
      return;

    } 
     {
      front = front?.next;
    }
  }

  void display() {
    if (front == null) {
      print("empty");
    } else {
      Node? temp = front;
      while (temp != null) {
        print(temp.value);
        temp = temp.next;
      }
    }
    print("--------------------------");
  }
}

void main(List<String> args) {
  Queue q = Queue();
  q.display();
  q.enqueue(1);
  q.enqueue(5);
  q.enqueue(3);
  q.enqueue(6);
  q.enqueue(9);
  print("Front ${q.front?.value} rear ${q.rear?.value}");

  q.display();
  q.dequeue();
  q.display();
  print("Front ${q.front?.value} rear ${q.rear?.value}");

  q.dequeue();
  q.dequeue();
  q.dequeue();

  q.display();
  print("Front ${q.front?.value} rear ${q.rear?.value}");

   q.dequeue();
  q.display();
  print("Front ${q.front?.value} rear ${q.rear?.value}");
}
