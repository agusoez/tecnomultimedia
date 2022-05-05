class GestorDeInteraccion {
  Dir_y_Vel mouse;
  boolean movGrande;
  boolean movPeque;

  GestorDeInteraccion() {
    mouse = new Dir_y_Vel();
  }

  void movimiento() {
    mouse.calcularTodo(mouseX, mouseY);
    movGrande = false;
    movPeque = false;

    if (mouse.velocidad()>10) {
      float umbral = 50;
      if (mouse.velocidad()>umbral) {
        movGrande = true;
      } else {
        movPeque = true;
      }
    }
  }
}
