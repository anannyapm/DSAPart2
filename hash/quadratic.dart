class Hash {
  int size = 7;
  List hashTable = List.filled(7, null);

  hashFunction(key) {
    return key % size;
  }

  insert(key) {
    int i = 0;
    int index = hashFunction(key);
    while (i < size) {
      int qindex = (index + i * i) % size;
      if (hashTable[qindex] == null) {
        hashTable[qindex] = key;
        break;
      }
      i++;
    }
  }

  display() {
    for (int i = 0; i < size; i++) {
      print("$i --- ${hashTable[i]}");
    }
  }
}

void main(List<String> args) {
  Hash h = Hash();
  h.insert(12);
  h.insert(22);
  h.insert(30);
  h.insert(50);

  h.display();
}
