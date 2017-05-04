import processing.sound.*;
SoundFile doorbell;

GameOfThrones JonSnow;
GameOfThrones Joffrey;
GameOfThrones Daenerys;
GameOfThrones Tyrion;
GameOfThrones Aryn;
GameOfThrones jugador1;
GameOfThrones jugador2;


int fondo;
int dibujo;
int opcion;
int turno;
int jugadorA;
int jugadorB;
int rostro;

int x = 0;
int z = 0;

PImage inicio;
PImage instruccion;
PImage seleccion;
PImage seleccion2;
PImage juego;
PImage resolucion;


PImage jonsnow;
PImage joffrey;
PImage daenerys;
PImage tryion;
PImage aryn;


 void setup(){
    size(960,540);
    
    
      inicio      = loadImage("inicio.jpg");
      inicio.resize(width,height);
      
      instruccion = loadImage  ("instruccion.jpg");
      instruccion.resize(width,height);
      
      seleccion   = loadImage  ("seleccion.jpg");
      seleccion.resize(width,height);
      
      seleccion2  = loadImage  ("seleccion2.jpg");
      seleccion2.resize(width,height);
      
      juego       = loadImage  ("juego.jpg");
      juego.resize(width,height);
      
      resolucion  = loadImage  ("resolucion.jpg");
      resolucion.resize(width,height);
      
      jonsnow  = loadImage   ("jonsnow.png");
      joffrey  = loadImage   ("joffrey.png");
      daenerys = loadImage   ("daenerys.png");
      tryion   = loadImage   ("tryion.png");
      aryn     = loadImage   ("aryn.png");
      

      JonSnow   =   new    GameOfThrones  ("JonSnow",50,7,8,10,0);
      Joffrey   =   new    GameOfThrones  ("Joffrey",50,7,6,9,1);
      Daenerys  =   new    GameOfThrones  ("Daenerys",50,5,6,11,2);
      Tyrion    =   new    GameOfThrones  ("Tyrion",50,6,8,10,3);
      Aryn      =   new    GameOfThrones  ("Aryn",50,5,6,10,4);



      doorbell  =   new    SoundFile   (this, "doorbell.mp3");
      doorbell.play();
      doorbell.amp(0.4);
}

void draw(){
    switch(fondo){
    
       case 0:
                 
                 image(inicio,0,0);
                 intro();
                 
       break;
       
       
       case 1: 
                 image(instruccion,0,0);
                 instruccion();
       break;
       
       
       case 2:
                 image(seleccion,0,0);
                 seleccion();
       break;
       
       
       case 3:
                 image(seleccion2,0,0);
                 seleccion2();
       break;  
       
       
       case 4:
                image(juego,0,0); 
                juego();
       break;
 
 
       case 5:
                image(resolucion,0,0);
                resultado();
       break;
 
    }
 }
 
   void intro(){
     
          if (keyPressed){
             if(key == 'p'){
              fondo = 1;
              }
           }
   }
   
   void instruccion(){
     
          if (keyPressed){
             if(key == 'g'){
              fondo = 2;
              }
           }
    }
     
     
     
   void seleccion(){
          
       if (keyPressed){
          if(key == 'a'){
            jugador1 = JonSnow;
            jugadorA = 0;
            fondo = 3;
          }
 
          else if(key =='b'){
             jugador1 = Joffrey; 
             jugadorA =1;
             fondo = 3;
          }
 
          else if(key =='c'){
             jugador1 = Daenerys;
             jugadorA =2;
             fondo = 3;
          }
          
          else if(key =='d'){
             jugador1 = Tyrion;
             jugadorA =3;
             fondo = 3;
          }
         
          else if(key =='e'){
             jugador1 = Aryn;
             jugadorA =4;
             fondo = 3;
          }
 
       }
 
  } 
  
  
  void seleccion2(){
  
          if (keyPressed){
             if(key == '1'){
                jugador2 = JonSnow;
                jugadorB = 0;
                fondo = 4;
              }
 
              else if(key =='2'){
                 jugador2 = Joffrey;
                 jugadorB =1;
                 fondo = 4;
              }
  
              else if(key =='3'){
                 jugador2 = Daenerys; 
                 jugadorB =2;
                 fondo = 4;
              }
              
              else if(key =='4'){
                 jugador2 = Tyrion; 
                 jugadorB =3;
                 fondo = 4;
              }
              
              else if(key =='5'){
                 jugador2 = Aryn;
                 jugadorB =4;
                 fondo = 4;
               }
           }
   }


   void juego(){

if(jugadorA == 0){
         pushMatrix();
         translate(140,200);
         scale(0.5);
     JonSnow.Dibujar(); 
         popMatrix();
   }
    else if(jugadorA ==1){
         pushMatrix();
         translate(140,200);
         scale(0.5);
      Joffrey.Dibujar();
         popMatrix();
    }
    else if(jugadorA ==2){
         pushMatrix();
         translate(140,200);
         scale(0.5);
      Daenerys.Dibujar();
         popMatrix();
    }
     
    else if(jugadorA ==3){
         pushMatrix();
         translate(140,200);
         scale(0.5);
      Tyrion.Dibujar();
         popMatrix();
    }
      
    else if(jugadorA ==4){
         pushMatrix();
         translate(140,200);
         scale(0.5);
      Aryn.Dibujar();
         popMatrix();
    }     
 
   if(jugadorB == 0){
         pushMatrix();
         translate(650,200);
         scale(0.5);
      JonSnow.Dibujar2();
         popMatrix();
    }
    else if(jugadorB ==1){
         pushMatrix();
         translate(650,200);
         scale(0.5);
       Joffrey.Dibujar2();
         popMatrix();
    }
     
    else if(jugadorB ==2){
         pushMatrix();
         translate(650,200);
         scale(0.5);
       Daenerys.Dibujar2();
         popMatrix();
    } 
    else if(jugadorB ==3){
         pushMatrix();
         translate(650,200);
         scale(0.5);
      Tyrion .Dibujar2();
         popMatrix();
    }
    else if(jugadorB ==4){
        pushMatrix();
        translate(650,200);
        scale(0.5);
      Aryn .Dibujar2();
        popMatrix();
    }
  
   
    


  ///// VIDA
   

    if(turno == 0){
          if(keyPressed){
             if (key =='a'){
               x = x + 200;
              
          jugador2.vida = jugador2.vida - jugador1.ataque;
          turno =1;
       }
             else if (key =='s'){
               x = x + 200;
          jugador2.vida = jugador2.vida - jugador1.ataque2;
          turno =1;
       }
              else if (key =='d'){
                x = x + 200;
          jugador2.vida = jugador2.vida - jugador1.especial;
          turno =1;
       }
       if(jugador2.vida <= 0){
               fondo = 5;
   } 
          }
}

    if(turno ==1){
          if(keyPressed){
             if (key =='k'){
               z = z - 200;
          jugador1.vida = jugador1.vida - jugador2.ataque;
          turno =0;
       }
              else if (key =='l'){
                 z = z - 200;
          jugador1.vida = jugador1.vida - jugador2.ataque2;
          turno =0;
       }
              else if (key =='ñ'){
                 z = z - 200;
          jugador1.vida = jugador1.vida - jugador2.especial;
          turno =0;
       }
       if(jugador1.vida <= 0){
               fondo = 5;
       }  
    }
    
 }
      barravida();
}


  void keyReleased() {
  if (key == 'a') {
      x = 0;
  }
        if (key == 's'){
             x = 0;
        }    
        if (key == 'd'){
             x = 0;
         } 
        if (key == 'k'){
             z = 0;
         }   
        if (key == 'l'){
            z = 0;
         }    
        if (key == 'ñ'){
            z = 0;
          }
       
  } 


 void barravida(){
         fill(255);
         rect(120,150,jugador1.vida*5,10);
         rect(650,150,jugador2.vida*5,10);
  }

 void resultado(){
   
         if (jugador1.vida <= 0){
           pushMatrix();
           translate(10,105);
              jugador2.Dibujar(); 
           popMatrix();
          }
  
          else {
             pushMatrix();
             translate(10,105);
               jugador1.Dibujar();
             popMatrix();
          }
 
   if (keyPressed){
      if(key == 'r'){
       fondo = 0;
       turno = 0;
   
      JonSnow   =   new    GameOfThrones  ("JonSnow",50,7,8,10,0);
      Joffrey   =   new    GameOfThrones  ("Joffrey",50,7,6,9,1);
      Daenerys  =   new    GameOfThrones  ("Daenerys",50,5,6,11,2);
      Tyrion    =   new    GameOfThrones  ("Tyrion",50,6,8,10,3);
      Aryn      =   new    GameOfThrones  ("Aryn",50,5,6,10,4);
   
       }
    }   
 
 }   
 

  


   