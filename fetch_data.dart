void main() {
  //1.Anweisung
  print("Fetching Data...");

  //2.Anweisung
  //Anweisung - "fertig", wenn Future zurück gegeben
  fetchData().then((data) {
    //Wenn Futre aufgelöst, dann gebe die Daten aus.
    print(data);
  });

  //3.Anweisung (Wird vor der Aufläsung des Futres aus Anweisung 2 ausgeführt)
  print("Warten auf Daten...");
}

//Funktion, die Daten abruft (kann etwas dauern)

Future<String> fetchData() {
//Normalerweise wird hier eine Anfrage an einen Datenbank geschickt,
//Wir simmulieren aber jetzt mit einer Verzögerung (Das ist die Delayed Funktion)
//.delayed machen wir nur, damit das Beispiel funktioniert.

  return Future.delayed(Duration(seconds: 3), () {
    return "My Data";
  });
}
//Wenn wir die Funktion ausführen, kommt erstmal ein Future zurück
//Dieses Future wird zu einem späteren Zeitpunkt zu einem String
