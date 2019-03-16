main() {
  var gift = {
    "ryo": "iphone4",
    "rei": "iphone3",
    "riku": "iphone3"
  };

  var friend = Map();

  friend['ryo'] = 'togahsi';
  friend['kohei'] = 'asai';
  friend['erika'] = 'yokoki';

  print(friend);
  print(gift['ryo']);

  final shop = const {
    1: "breka",
    2: "ebisu",
    3: "chico"
  };

  print(shop);
}