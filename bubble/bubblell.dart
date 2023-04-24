import '../linkedlist.dart';


void main(List<String> args) {
  LinkedList linkedList = LinkedList();
  linkedList.append(25);
  linkedList.append(2);
  linkedList.append(5);
  linkedList.append(100);
  linkedList.append(5);
  linkedList.append(9);

  linkedList.display();

  swap(Node? node1, Node? node2) {
    var temp = node1?.value;
    node1?.value = node2?.value;
    node2?.value = temp;
    
  }

  for (int i = 0; i < linkedList.nodeCount - 1; i++) {
    Node? temp = linkedList.head;
    int swapped = 0;
    for (int j = 0; j < linkedList.nodeCount - i - 1; j++) {
      Node? n1 = temp;
      Node? n2 = temp?.next;
      if (n1?.value > n2?.value) {
        swap(n1, n2);
        swapped = 1;
      }
      temp = temp?.next;
    }
    if (swapped == 0) {
      break;
    }
  }

  linkedList.display();
}
