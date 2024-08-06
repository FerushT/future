//Erstelle eine Dart-Funktion fetchUserName, die ein Future zurückgibt,
//das nach einer Verzögerung von 3 Sekunden mit dem String deines Namens abgeschlossen wird.

//Erstelle eine weitere Funktion fetchUserAge, die ein Future zurückgibt,
//das nach einer Verzögerung von 2 Sekunden mit deinem Alter abgeschlossen wird.

//Rufe in der main-Funktion fetchUserName auf und verkette einen then-Aufruf,
//um das Alter mittels fetchUserAge abzurufen. Gebe sowohl den Namen als auch das Alter in der Konsole aus.

//Überlege dir vorher, nach wie vielen Sekunden das Alter des Users in der Konsole erscheint.

//Löse anschließend die Verkettung auf und führe die fetch-Funktionen nacheinander in der Main Methode aus.
//Welche Unterschiede fallen auf?

Future<String> fetchUserName() {
  return Future.delayed(Duration(seconds: 3), () {
    // return "Ferhat";
    return Future.error("Kein Name gefunden");
  });
}

Future<int> fetchUserAge() {
  return Future.delayed(Duration(seconds: 2), () {
    // return 42;
    return Future.error("Kein Alter gefunden");
  });
}

void main() {
  print("Warte auf Daten...");

  fetchUserName().then((name) {
    print("Name: $name");
  }).catchError((error) {
    print("Fehler beim Namen: $error");
  });

  fetchUserAge().then((age) {
    print("Alter: $age");
  }).catchError((error) {
    print("Fehler beim Alter: $error");
  });
}
