void main(List<String> args) async {
  print('inicio del programa');
  try {
    String response = await httpGet('https://www.algo-error.com');
    print('Exito $response');
  } on Exception catch (err) {
    print('Tenemos una excepción: $err');
  } catch (e) {
    print('OPPS! algo terrible paso: $e');
  } finally {
    print('Fin del try-catch');
  }
  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('Error en la petición');
}
