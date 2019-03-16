main() {
  var list = [1, 2, 3, 4, 5, 6];

  list.forEach(printElement);


  var list2 = ['apple','grape','lemon','banana','orenge'];

  list2.forEach((item) {
    print(item);
  });


  var list3 = [1, 2, 3, 4, 5, 6, 7, 8];

  list3.forEach((item) => print(item));
}

void printElement(int element) {
  print(element);
}

