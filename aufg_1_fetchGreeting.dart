//Erstelle eine Dart-Funktion fetchGreeting, die ein Future zurückgibt,
//das nach einer Verzögerung von 2 Sekunden mit dem String "Hello World!" abgeschlossen wird.

// Rufe in der main-Funktion fetchGreeting auf und gebe den zurückgegebenen String mithilfe von .then() aus.

Future<String> fetchGreeting() {
  return Future.delayed(Duration(seconds: 2), () {
    // return "Hello World";

    return Future.error("Keine Meldung");
  });
}

void main() {
  print("Warte auf Begrüßung....");

  fetchGreeting().then((greeting) {
    print(greeting);
  }, onError: (error) {
    print("Achtung Fehler: $error");
  });
}
