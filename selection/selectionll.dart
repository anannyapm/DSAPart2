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

  Node? temp = linkedList.head;

  while (temp != null) {
    Node? minimum = temp;
    Node? nexttemp = temp.next;
    while (nexttemp != null) {
      if (nexttemp.value < minimum?.value) {
        minimum = nexttemp;
      }
      nexttemp = nexttemp.next;
    }

    if (temp.value != minimum?.value) {
      var t = temp.value;
      temp.value = minimum?.value;
      minimum?.value = t;
    }
    temp = temp.next;
  }
  print("\nSorted \n");
  linkedList.display();
}
