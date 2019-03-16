
main () {
  print(numberDivide(987654321));
}

List numberDivide(num) {

  var returnList = [];
  while(true) {

    if(num % 10 == 0) {
      break;
    }

    returnList.add(num % 10);

    num = num ~/ 10;
  }

  return returnList;
}