//Füge den Funktionen aus Aufgabe 2 Error Handling hinzu. Zur Erinnerung:
//Error Handling bei Futures beschreibt die Ausführung von Code, sollte das Future keine Daten,
//sondern einen Fehler zurück erhalten.

//Denke dir für die jeweiligen Funktionen passende Fehlernachrichten aus.

//Tipp: Mit der Funktion…
//return Future.error('500');

//…kannst du eine fehlerhafte Ausführung deiner Funktionen simulieren.

Future<String> fetchUserName() {
  return Future.delayed(Duration(seconds: 3), () {
    return Future.error("Kein Name gefunden!");
  });
}

Future<int> fetchUserAge() {
  return Future.delayed(Duration(seconds: 2), () {
    return Future.error("Kein Alter gefunden!");
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
