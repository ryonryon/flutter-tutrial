main() {
  var list = [1, 2, 3];

  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;

  assert(list[1] == 1);

  var list2 = const [1, 2, 3, 4];
  print(list2);
}