//Füge den Funktionen aus Aufgabe 1 Error Handling hinzu. Zur Erinnerung:
//Error Handling bei Futures beschreibt die Ausführung von Code, sollte das Future keine Daten,
//sondern einen Fehler zurück erhalten.

//Denke dir für die jeweiligen Funktionen passende Fehlernachrichten aus.

//Tipp: Mit der Funktion…
//return Future.error('500');

//…kannst du eine fehlerhafte Ausführung deiner Funktionen simulieren.

Future<String> fetchGreeting() {
  return Future.delayed(Duration(seconds: 2), () {
    return Future.error("Keine Begrüßung programmiert!");
  });
}

void main() {
  print("Warte auf Begrüßung von (Hello World)...");

  fetchGreeting().then((greeting) {
    print(greeting);
  }, onError: (error) {
    print("Achtung Fehler: $error");
  });
}
