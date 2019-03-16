

main() {
  print(say('Bob', 'Howdy'));
}

void fizzBuzz(int num) {

  for(var i = 0; i < num; i++) {

    var returnWord = '';

    if(i % 3 == 0) {
      returnWord += 'Fizz';
    }
    if(i % 5 == 0) {
      returnWord += 'Buzz';
    }
    if(returnWord.isEmpty) {
      returnWord += i.toString();
    }

    print(returnWord);
  }
}

String say(String from, String msg, [String device = 'carrier pigeon', String mood]) {

  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}