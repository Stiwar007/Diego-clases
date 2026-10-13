class Rectangulo {
  double base;
  double altura;

  Rectangulo (this.altura, this.base);

  double CalcularArea() {
    return base * altura;
  }

  double CalcularPerimetro(){
    return 2*(altura + base);
  }

  @override

  String toString(){
   return ("El area es de ${CalcularArea()} y el perimetro es ${CalcularPerimetro()}");
  }
}

void main(){
  final Rectangulo1 = new Rectangulo(8.8, 5.0);
  print(Rectangulo1);

}