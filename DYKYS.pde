// Do You Know Your Stuff? – Naomi
  // This is a music quiz. There will be a total of 5 questions. 
  // Press the spacebar to go to the next scene. 
  // Press ‘p’ to play the song and press ‘s’ to stop the song. 
  // After listening to the song clip, select the correct album cover. 
  // Once you click on the correct song, a pop up will let you know 
  // that you are ready to move on to the next question by pressing the spacebar.

//import music library
import ddf.minim.*;

int scene;

// Setting up scene classes
SceneZero sceneZero = new SceneZero(); 
SceneOne sceneOne = new SceneOne();
SceneTwo sceneTwo = new SceneTwo();
SceneThree sceneThree = new SceneThree();
SceneFour sceneFour = new SceneFour();
SceneFive sceneFive = new SceneFive();
SceneSix sceneSix = new SceneSix();

// Setting up songs
  Minim minim;
  AudioPlayer song0; // Let's Get It Started
  AudioPlayer song1; // Gasolina Scene 1
  AudioPlayer song2; // Nikes Scene 2
  AudioPlayer song3; // Time Scene 3
  AudioPlayer song4; // Pon de Replay Scene 4
  AudioPlayer song5; // Hot Nigga Scene 5
  AudioPlayer song6; // We Are the Champions Scene 6
  
//loading images 
  //Scene 0
  PImage musicCursor;
  
  //Scene 1 
  PImage Safaera_cover;
  PImage Gasolina_cover;
  PImage LaBotella_cover;
  PImage LaNegraTieneTumbao_cover;
  
  //Scene 2
  PImage PuertoRico_cover;
  PImage nikes_cover;
  PImage Kmsoftlyfugees_cover;
  PImage CRISIS_cover;
  
  //Scene 3
  PImage Zombie_cover;
  PImage LosingMyReligion_cover;
  PImage Nirvana_cover;
  PImage Time_cover;
  
  //Scene 4
  PImage TheSweetEscape_cover;
  PImage Pon_de_Replay_cover;
  PImage Promiscuous_cover;
  PImage RockYourBody_cover; 
  
  //Scene 5
  PImage Hot_Nigga_cover;
  PImage Magnolia_cover;
  PImage LoveSosa_cover;
  PImage LucidDreams_cover;


void setup () {
  
  size(700,600);
  scene = 0;
  
 // Custom cursor
  imageMode(CENTER);
  musicCursor = loadImage("musicNoteCursor.PNG");
  musicCursor.resize (25,40);
  cursor(musicCursor, mouseX, mouseY);
  
 // Loading songs 
  minim = new Minim(this); //initialize minim
  song0 = minim.loadFile("LetsGetItStarted.mp3", 512); // scene 0
  song1 = minim.loadFile("Gasolina.mp3", 512); // scene 1
  song2 = minim.loadFile("Nikes.mp3", 512); // scene 2
  song3 = minim.loadFile("Time.mp3", 512); // scene 3
  song4 = minim.loadFile("Pon de Replay.mp3", 512); // scene 4
  song5 = minim.loadFile("Hot Nigga.mp3", 512); // scene 5
  song6 = minim.loadFile("Champions.mp3", 512); // scene 6

 // Images for Scenes
  
  //Scene 1 
  Safaera_cover = loadImage("Safaera_cover.jpg");
  Gasolina_cover = loadImage("Gasolina_cover.jpg");
  LaBotella_cover = loadImage("LaBotella_cover.jpg");
  LaNegraTieneTumbao_cover = loadImage("LaNegraTieneTumbao_cover.jpg");
  
  //Scene 2
  PuertoRico_cover = loadImage("PuertoRico_cover.jpg");
  nikes_cover = loadImage("nikes_cover.jpg");
  Kmsoftlyfugees_cover = loadImage("Kmsoftlyfugees_cover.jpg");
  CRISIS_cover = loadImage("CRISIS_cover.jpg");
  
  //Scene 3
  Zombie_cover = loadImage("Zombie_cover.jpg");
  LosingMyReligion_cover = loadImage("LosingMyReligion_cover.jpg");
  Nirvana_cover = loadImage("Nirvana_cover.jpg");
  Time_cover = loadImage("Time_cover.jpg");
  
  //Scene 4
  TheSweetEscape_cover = loadImage("TheSweetEscape_cover.jpg");
  Pon_de_Replay_cover = loadImage("Pon_de_Replay_cover.jpg");
  Promiscuous_cover = loadImage("Promiscuous_cover.jpg");
  RockYourBody_cover = loadImage("RockYourBody_cover.jpg"); 
  
  //Scene 5
  Hot_Nigga_cover = loadImage("Hot_Nigga_cover.jpg");
  Magnolia_cover = loadImage("Magnolia_cover.jpg");
  LoveSosa_cover = loadImage("LoveSosa_cover.jpg");
  LucidDreams_cover = loadImage("LucidDreams_cover.jpg");
}


void draw () {
  
  //Scene Changes
  
  if (scene == 0)
  {
     sceneZero.setup();
     sceneZero.draw();
     sceneZero.title();
     
  }
  else if (scene == 1)
  {
     sceneOne.setup();
     sceneOne.draw();
     sceneOne.displayInstructions(); 
     sceneOne.mousePressed();
     sceneOne.endScene();
  }
  else if (scene == 2)
  {
     sceneTwo.setup();
     sceneTwo.draw();
     sceneTwo.displayInstructions(); 
     sceneTwo.mousePressed();
     sceneTwo.endScene();
   }
  else if (scene == 3)
  {
     sceneThree.setup();
     sceneThree.draw();
     sceneThree.displayInstructions(); 
     sceneThree.mousePressed();
     sceneThree.endScene();
  }
  else if (scene == 4)
  {
     sceneFour.setup();
     sceneFour.draw();
     sceneFour.displayInstructions(); 
     sceneFour.mousePressed();
     sceneFour.endScene();
  }
  else if (scene == 5)
  {
    sceneFive.setup();
    sceneFive.draw();
    sceneFive.displayInstructions(); 
    sceneFive.mousePressed();
    sceneFive.endScene();
  }
   else if (scene == 6)
  {
    sceneSix.setup();
    sceneSix.draw();
    sceneSix.title();
  }
}


void keyPressed(){
   if (scene == 0) {        //at scene 0
    sceneZero.keyPressed();
   }
   else if (scene == 1) {   //calls scene 1
    sceneOne.keyPressed();
   }
   else if (scene == 2) {   //calls scene 2
    sceneTwo.keyPressed();
   }
   else if (scene == 3) {   //calls scene 3
    sceneThree.keyPressed();
   }
   else if (scene == 4) {   //calls scene 4
    sceneFour.keyPressed();
   }
   else if (scene == 5) {   //calls scene 5
    sceneFive.keyPressed();
   }
}
