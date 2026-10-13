class Descuento {
  double valor;      
  int productos;     

  Descuento(this.productos, {this.valor = 0.0});

  double calcularPorcentaje() {
    if (productos < 0) {
      return 0.0;
    } else if (productos > 100) {
      return 10.0; 
    } else if (productos >= 11 && productos <= 100) {
      return 8.8;  
    } else if (productos >= 1 && productos <= 10) {
      return 1.11; 
    }
    return 0.0; 
  }

  double calcularTotal() {
    double subtotal = valor * productos;
    double porcentaje = calcularPorcentaje();
    double descuentoMonto = subtotal * (porcentaje / 100);
    return subtotal - descuentoMonto;
  }

  @override
  String toString() {
    if (productos < 0) {
      return "Error: No hay productos válidos.";
    }
    return "Cantidad: $productos  Descuento: ${calcularPorcentaje()}%  Precio Base: \$${(valor * productos).toStringAsFixed(2)}  Total con descuento: \$${calcularTotal().toStringAsFixed(2)}";
  }
}

void main() {
  final compra1 = Descuento(12, valor: 50.0);
  print(compra1);

  final compra2 = Descuento(5, valor: 20.0);
  print(compra2);
}