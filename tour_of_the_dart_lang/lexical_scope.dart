main() {
  lexicalScope();
}

bool topLevel = true;

void lexicalScope() {
  var secondLevel = true;

  void secondLevelMethod() {

    var thirdLevel = true;

    assert(topLevel);
    assert(secondLevel);
    assert(thirdLevel);

    print(topLevel);
    print(secondLevel);
    print(thirdLevel);
  }
  secondLevelMethod();
}