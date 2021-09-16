
void txt(String texto_,float x_, float y_, float size_, int alin_, color color_) {
  pushStyle();
  fill( color_ );
  textSize( size_ );
  textAlign( alin_ );
  text( texto_, x_ , y_ );
  popStyle();
} 
