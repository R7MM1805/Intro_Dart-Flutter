void main(List<String> args) {
  print('inicio del programa');
  httpGet('https://www.algo.com')
      .then(print)
      .catchError((error) => print('Error: $error'));
  httpGetError('https://www.algo.com')
      .then(print)
      .catchError((error) => print('Error: $error'));
  print('fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Respuesta del http';
  });
}

Future<String> httpGetError(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
  });
}
