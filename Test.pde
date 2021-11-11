String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};

void runUnitTests() {
  //her skriver du dine unit test's
  //nedenfor er bare et eksempel på tre unit-tests
  //:-)
  test1();
  test2();
  test3();
}

ArrayList<String> indhold = new ArrayList<String>();

String[] search(String[] liste, String tekst) {
  for (String e : liste) {
    if (e.contains(tekst)) {
      indhold.add(e);
    }
  }
  String[] result = indhold.toArray( new String[0]);

  return result;
}

void test1() { //Ingen bynavne bliver printet ud, fordi det ikke er mere end 2 karakterer.
  String[] resultat = search(liste, "V");

  if (resultat.length <= 2) {
    println("Succes! Der er ikke nok karakterer.");
  } else {
    println("Fejl! Der er for mange karakterer.");
  }
}

void test2() { //Alle bynavne bliver printet ud.
  if (tekst == "*") {
    println("Succes! Alle bynavne bliver printet ud.");
    for (int i = 0; i < liste.length; i++)
      println(liste[i]);
  } else {
    println("Fejl! Alle bynavne bliver ikke printet ud.");
  }
}

void test3() { //To bynavne bliver printet ud.
  String[] resultat = search(liste, "Va");

  if (tekst == "Vancouver") {
    println("Succes!");
    println(resultat);
  } else {
    println("Fejl! Der bliver ikke fundet nogen byer.");
  }
}

void test4() { //Bynavnet bliver printet ud hvis det indeholder disse ord efter hinanden.
  String[] resultat = search(liste, "ape");

  if (resultat.length == liste.length) {
    println(resultat);
  } else {
    println("Failure!");
  }
}
