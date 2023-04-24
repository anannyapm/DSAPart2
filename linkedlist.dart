import 'dart:io';

class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value});
}

class LinkedList {
  Node? head;
  Node? tail;
  int nodeCount = 0;

  void display() {
    if (head == null) {
      print("Empty Linked List");
      return;
    }
    Node? tempNode = head;
    while (tempNode != null) {
      stdout.write("${tempNode.value} -> ");
      tempNode = tempNode.next;
    }
    if (tempNode == null) {
      stdout.write("null\n");
    }

    return;
  }

  //add to end
  append(var Nodeval) {
    Node newNode = Node(value: Nodeval);
    newNode.next = null;
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
    nodeCount++;
  }
}
