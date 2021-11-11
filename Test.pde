String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};

String testPrefix = "";

void runUnitTests() {
  //her skriver du dine unit test's
  //nedenfor er bare et eksempel på tre unit-tests
  //:-)
  test1();
  test2();
  test3();
}

void test1() { //Ingen bynavne bliver printet ud, fordi det ikke er mere end 2 karakterer.
  String[] resultat = search(liste, "V");

  if (resultat.length <= 2) {
    println("Succes!");
  } else {
    println("Failure!");
  }
}

void test2() { //Alle bynavne bliver printet ud.
  boolean allCities = true;
  if (allCities) {
    println(liste);
  } else {
    println("Failure!");
  }
}

void test3() { //To bynavne bliver printet ud.
 String[] resultat = search(liste, "Va");
  
  if (resultat.length == liste.length) {
    println(resultat);
  } else {
    println("Failure!");
  }
}
