import 'dart:async';

Future<int> fetchUserAge() {
  return Future.delayed(Duration(seconds: 3), () {
    // Einen gültigen Ganzzahlwert zurückgeben
    // return 35;

    // Einen Fehler zurückgeben
    return Future.error("500");
  });
}

void main() {
  fetchUserAge().then((age) {
    print("Benutzeralter: $age");
  }, onError: (error) {
    print("Achtung Fehler: $error");
  });
}
