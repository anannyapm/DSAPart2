import 'dart:io';

class Hash {
  int size = 10;
  List hashTable = List.filled(10, null);

  int hashfunction(int key) {
    return key % size;
  }

  put(key) {
    int index = hashfunction(key);
    hashTable[index] = key;
  }

  get(value) {
    int index = hashfunction(value);
    if (hashTable[index] == value) {
      print("Found");
      return true;
    }
    print("Notfound");
    
  }

  display() {
    for (int i = 0; i < hashTable.length; i++) {
      stdout.write("Index $i --- ");
      if (hashTable[i] == null) {
        stdout.write("null\n");
      } else {
        stdout.write("${hashTable[i]}\n");
      }
    }
  }
}

void main(List<String> args) {
  Hash h = Hash();
  h.put(1);
  h.put(2);
  h.put(16);
  h.display();
  h.get(8);
  h.get(2);
}
