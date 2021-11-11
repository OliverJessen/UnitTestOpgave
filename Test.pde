String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};

String testPrefix = "";

void runUnitTests() {
  //her skriver du dine unit test's
  //nedenfor er bare et eksempel på tre unit-tests
  //:-)
  test1();
}

void test1() {
  String[] resultat = search(liste, "V");

  if (resultat.length >= 0) {
    println("Succes!");
  } else {
    println("Failure!");
  }
}

void test2() {
  String[] resultat = search(liste, "*");

  if ("*") {
    println(liste.length);
  } else {
    println("Failure!");
  }
}
