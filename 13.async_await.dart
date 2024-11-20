void main(List<String> args) async {
  print('inicio del programa');
  String responseGet = await httpGet('https://www.algo.com');
  print(responseGet);
  try {
    String responseGetError = await httpGetError('https://www.algo-error.com');
    print(responseGetError);
  } catch (e) {
    print('Tenemos un error: $e');
  }
  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Valor de la petición';
}

Future<String> httpGetError(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición';
}
