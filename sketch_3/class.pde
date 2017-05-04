class GameOfThrones {
  String nombre;
  int vida;
  int ataque;
  int ataque2;
  int especial;
  int rostro;
  

  GameOfThrones(String nombre_, int vida_, int ataque_, int ataque2_, int especial_, int rostro_)
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    ataque2 = ataque2_;
    especial = especial_;
    rostro = rostro_;
   
   }
   void Dibujar(){

          switch(rostro){
              
            case 0:
            
                   image(jonsnow,x,0);
            break;

            case 1:
            
                   image(joffrey,x,0);
            break;
            
            case 2:
            
                   image(daenerys,x,0);
            break;
            
            case 3:
            
                   image(tryion,x,0);
            break;
            
            case 4:
            
                   image(aryn,x,0);
            break;
          }
   } 
 
   void Dibujar2(){

          switch(rostro){
              
            case 0:
            
                   image(jonsnow,z,0);
            break;

            case 1:
            
                   image(joffrey,z,0);
            break;
            
            case 2:
            
                   image(daenerys,z,0);
            break;
            
            case 3:
            
                   image(tryion,z,0);
            break;
            
            case 4:
            
                   image(aryn,z,0);
            break;
          }
   } 
   
}
   
  