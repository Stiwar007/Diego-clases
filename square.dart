class square{

  double height = 0;

  square(double height) {
    this.height = height;
  }

  double getArea(){
    return this.height * this.height;
  }

  double getPerimeter(){
    return 4 * height;
  }

  @override
  String toString(){
    return ("El cuadrado tiene ${height} de lado y su area es ${getArea().toStringAsFixed(2)}");
  }
}