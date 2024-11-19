void main(List<String> args) {
  final Square mySquare = Square(side: -8);
  //mySquare.side = -9;
  print('Area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }

  double calculateArea() => _side * _side;
}
