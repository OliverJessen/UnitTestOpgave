String[] liste = {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};

void runUnitTests() {
  test1();
  test2();
  test3();
  test4();
}


String[] search(String[] liste_, String tekst) {

  if (tekst.equals("*"))
    return liste;

  if (tekst.length() < 2)
    return null;

  ArrayList<String> indhold = new ArrayList<String>();
  for (String e : liste_) {
    if (e.contains(tekst)) {
      indhold.add(e);
    }
  }
  String[] result = indhold.toArray( new String[0]);

  return result;
}

void test1() { //Ingen bynavne bliver printet ud, fordi det ikke er mere end 2 karakterer.
  String[] resultat = search(liste, "V");

  if (resultat == null) {
    println("Succes! Der er ikke nok karakterer.");
  } else {
    println("Fejl! Der er for mange karakterer.");
  }
}

void test2() { //Alle bynavne bliver printet ud.
  String[] resultat = search(liste, "*");

  if (resultat == liste) {
    println("Succes! Alle bynavne bliver printet ud.");
    for (String e : liste)
      println(e);
  } else {
    println("Fejl! Alle bynavne bliver ikke printet ud.");
    for (String e : resultat)
      println(e);
  }
}

void test3() { //To bynavne bliver printet ud.
  String[] resultat = search(liste, "Va");

  for(String e : resultat)
  if (e.contains("Va")) {
    println("Succes! Byen " + e + " blev fundet.");
   
  } else {
    println("Fejl! Byerne Vancouver og Valencia blev ikke fundet.");
  }
}

void test4() { //Et bynavn bliver printet ud hvis det indeholder disse ord.
  String[] resultat = search(liste, "ape");

  for(String e : resultat)
  if (e.contains("ape")) {
    println("Succes! Byen " + e + " blev fundet.");
   
  } else {
    println("Fejl! Byen Budapest blev ikke fundet.");
  }
}
