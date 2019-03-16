main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var names = <String>{};

  names.add("gogogo");
  names.add("not go not go not go");

  print(halogens);
  print(names);

  names.addAll(halogens);

  print(names);

  print(names.length);

  final constSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };

  print(constSet);
}