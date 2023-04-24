import 'dart:io';

import '../linkedlist.dart';

class Hash {
  int size = 7;
  List hashTable = List.filled(7, null);

  hashfunction(key) {
    return key % this.size;
  }

  insertItem(key) {
    int index = this.hashfunction(key);
    //print(index);
    LinkedList li = LinkedList();

    if (hashTable[index] == null) {
      hashTable[index] = li;
    } else {
      li = hashTable[index];
    }
    li.append(key);
  }

  displayHash() {
    for (int i = 0; i < hashTable.length;i++) {
      stdout.write("Index $i --- ");
      if (hashTable[i] == null) {
        stdout.write("null\n");
      } else {
        LinkedList l = hashTable[i];
        l.display();
      }
    }
  }
}

void main(List<String> args) {
  var a = [15, 11, 27, 8, 12];
  Hash h = Hash();

  for (var x in a) {
    h.insertItem(x);
  }

  h.displayHash();
}
