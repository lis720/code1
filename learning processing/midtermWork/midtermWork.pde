PVector buttonSize = new PVector (150, 30);
 
int levelNumber;
 
String textForMyLevel [];
String buttonOneText [];
String buttonTwoText [];
int playerChoice; 
 
void setup ()
{
  size (1024, 768);
 
  levelNumber = 0;
  playerChoice = 0;
  textForMyLevel = new String [9];
  textSize(12);
 
  textForMyLevel[0] = "You wake up from a deep sleep, and find yourself surrounded by tall, eery trees. They almost seem to be looking at you, prompting you to get up.\n From where you are standing, you can see a path that goes North, further into the forest. If you stare West, you can see what looks like an old blue house.\n Which way do you go?";
  textForMyLevel[1] = "You hear running water nearby, and follow the path going North. After several hundred feet you find yourself by a creek.\n There doesn't seem to be another path.\n Do you swim, or turn back? ";
  textForMyLevel[2] = "You trek West and follow the path in front of you. There doesn't seem to be anything around here, no birds, no squirrels, no sounds.\n You begin to approach the blue house. It almst seems darker then before outside. You can see a window up front, a door stands right beside it.\n Approach window or knock on door?";
  textForMyLevel[3] = "You slowly enter the water. Your body spasms from the intense cold of the water.You look down and realize you don't see what's in the water.";
  textForMyLevel[4] = "You've made it about hafway through the creek when you feel something tug on your foot. Before you can properly react, you find yourself underwater, gasping for air.\n As you look down, a mermaid like creature locks its eyes with yours.\n You see the whites in it's eyes and then everything fades to black.\n YOU ARE DEAD"; 
  textForMyLevel[5] = "You peer into the window. From what you can see, the house is mostly empty. Old beige rags drap over what remains of the furniture.\n You tap the glass. While further examining the window, you notice it is not completely locked. Open the window, or try the door?";
  textForMyLevel[6] = "You knock on the door hard, and are stunned when a desheveled figure opens the door. It seems to be swinging a knife in your direction.\n you feel a sharp pain in your stomach. You look down and see blood seeping through your shirt. YOU ARE DEAD";
  textForMyLevel[7] = "You open the window slowly.";
 
  buttonOneText = new String [9];
  buttonOneText[0] = "North";
  buttonOneText[1] = "Swim";
  buttonOneText[2] = "Window";
  buttonOneText[3] = "Continue";
  buttonOneText[4] = "Restart";
  buttonOneText[5] = "Open Window";
  buttonOneText[6] = "Restart";
  buttonOneText[7] = "Run";
 
 
  buttonTwoText = new String [9];
  buttonTwoText[0] = "West";
  buttonTwoText[1] = "Turn Back";
  buttonTwoText[2] = "Door";
  buttonTwoText[3] = "Continue";
  buttonTwoText[4] = "Restart";
  buttonTwoText[5] = "Try Door";
  buttonTwoText[6] = "Restart";
  buttonTwoText[7] = "Hide";
}
 
void draw ()
{
  background (0);
 
  // the stuff for all levels
  rect(width/2 - buttonSize.x - 100, height - 100, buttonSize.x, buttonSize.y);
  if (!buttonTwoText[levelNumber].equals(buttonOneText[levelNumber]))
    rect(width/2 + 100, height - 100, buttonSize.x, buttonSize.y); 
 
  PrintMyButtonTexts();
  PrintMyLevelText();
 
  // stuff depending on levelNumber 
  if (levelNumber == 0)
  {
    LevelZero();
  } else if (levelNumber == 1)
  {
    LevelOne();
  } else if (levelNumber == 2) 
  {
    LevelTwo();
  } else if (levelNumber == 3) 
  {
    LevelThree();
  } else if (levelNumber == 4) 
  {
    LevelFour();
  } else if (levelNumber == 5) 
  {
    LevelFive();
  } else if (levelNumber == 6) 
  {
    LevelSix();
  } else if (levelNumber == 7) 
  {
    LevelSeven();
  }
}
 
// -----------------------------------------------------
 
void PrintMyLevelText ()
{
  text(textForMyLevel[levelNumber], 100, 100);
}
 
void PrintMyButtonTexts ()
{
  text(buttonOneText[levelNumber], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  if (!buttonTwoText[levelNumber].equals(buttonOneText[levelNumber]))
    text(buttonTwoText[levelNumber], width/2 + 100, height - 150 + buttonSize.y);
}
 
// -----------------------------------------------------
 
void mousePressed() {
  playerChoice = buttonSelection ();
}
 
int buttonSelection ()
{
  // default 
  int thingToReturn = 0;
 
  if (mouseX >= (width/2 - buttonSize.x - 100) && 
    mouseX <= (width/2 - 100) && 
    mouseY >= (height - 100) &&
    mouseY <= (height - 100 + buttonSize.y))
  {
    println ("inside the left button on X");
    if (mousePressed)
    {
      println ("mouse pressed inside the left button");
      thingToReturn = 1;
    }
  } else if (mouseX >= (width/2 + 100) &&
    mouseX <= (width/2 + 100 + buttonSize.x) && 
    mouseY >= (height - 100) && 
    mouseY <= (height - 100 + buttonSize.y))
  {
    println ("inside the right button on X");
    if (mousePressed)
    {
      println ("mouse pressed inside the right button");
      thingToReturn = 2;
    }
  }
 
  return thingToReturn;
}
 
// -----------------------------------------------------
 
void LevelZero ()
{
  if (playerChoice == 1)
  {
    levelNumber = 1;
  } else if (playerChoice == 2)
  {
    levelNumber = 2;
  }
  playerChoice=0;
}
 
void LevelOne ()
{
  if (playerChoice == 1)
  {
    levelNumber = 3;
    println("Hello from the other side");
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 1");
  playerChoice=0;
}
 
void LevelTwo ()
{
  if (playerChoice == 1)
  {
    levelNumber = 5;
  } else if (playerChoice == 2)
  {
    levelNumber = 6;
  }
  println ("I'm in level 2");
  playerChoice=0;
}
 
void LevelThree()
{
  if (playerChoice == 1)
  {
    levelNumber = 4;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 3");
  playerChoice=0;
}
 
void LevelFour()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 4");
  playerChoice=0;
}
 
void LevelFive()
{
  if (playerChoice == 1)
  {
    levelNumber = 7;
  } else if (playerChoice == 2)
  {
    levelNumber = 6;
  }
  println ("I'm in level 5");
  playerChoice=0;
}
 
void LevelSix()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 6");
  playerChoice=0;
}
 
void LevelSeven()
{
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
  println ("I'm in level 7");
  playerChoice=0;
}
// -----------------------------------------------------
//