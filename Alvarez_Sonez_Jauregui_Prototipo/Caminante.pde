class CaminanteTri {

  float x, y, t, vel, dir;

  CaminanteTri() {
    x = 0;
    vel = 4;
    dir = 0;
  }

  void dibujar(float xtri, float xtrii, float xtriii, float ytri) {
    triangle(xtri, 0, xtrii, 0, xtriii, y* ytri);
  }

  void mover() {
    y = map(gPitch.filtradoNorm(), 0, 1, -MIN_PITCH, -350);
  }
}
