import 'dart:io';


class Hash {
  int size = 5;
  List hashTable = List.filled(5, null);
  double loadfactor = 0.75;
  int count = 0;

  hashfunction(key) {
    return key % this.size;
  }

  insertItem(key) {
    if (loadfactor > 0.75) {
      rehash();
    }
    int index = hashfunction(key);
    if (hashTable[index] == null) {
      hashTable[index] = key;
      count++;
      loadfactor = count / size;
      return;
    }
    while (hashTable[index] != null) {
      //collision handling with linear probing
      index = hashfunction(index + 1);
    }
    hashTable[index] = key;
    count++;
    loadfactor = count / size;
  }

  rehash() {
    int newSize = size * 2;
    List newTable = List.filled(newSize, null);
    for (int i = 0; i < size; i++) {
      if (hashTable[i] != null) {
        int newIndex = hashfunction(hashTable[i]);
        while (newTable[newIndex] != null) {
          newIndex = hashfunction(newIndex + 1);
        }
        newTable[newIndex] = hashTable[i];
      }
    }
    size = newSize;
    hashTable = newTable;
    loadfactor = count / size;
  }

  bool getItem(key) {
    int index = hashfunction(key);
    int counter = 0;
    while (hashTable[index] != null && counter < size) {
      if (hashTable[index] == key) {
        return true;
      }
      index = hashfunction(index + 1);
      counter++;
    }
    return false;
  }

  bool removeItem(key) {
    int index = hashfunction(key);
    int counter = 0;
    while (hashTable[index] != null && counter < size) {
      if (hashTable[index] == key) {
        hashTable[index] = null;
        count--;
        loadfactor = count / size;
        return true;
      }
      index = hashfunction(index + 1);
      counter++;
    }
    return false;
  }

  displayHash() {
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
  var a = [50, 70, 76, 85];
  Hash h = Hash();

  for (var x in a) {
    h.insertItem(x);
  }

  h.displayHash();

  print(h.getItem(76));
  print(h.getItem(5));

  h.removeItem(76);
  h.displayHash();
  print("----------");
  h.insertItem(76);
  h.insertItem(89);
  h.displayHash();
}
