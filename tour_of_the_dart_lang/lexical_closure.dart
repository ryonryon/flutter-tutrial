

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main() {
  var add2 = makeAdder(2);

  var add4 = makeAdder(4);

  print(add2(3));
  print(add4(5));
}