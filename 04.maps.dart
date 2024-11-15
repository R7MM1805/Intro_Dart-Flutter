void main(List<String> args) {
  Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    },
  };
  print(pokemon);
  print(pokemon['name']);
  print(pokemon['sprites']);
  print('Sprite Back: ${pokemon['sprites'][2]}');
  print('Sprite Front: ${pokemon['sprites'][1]}');
}
