//-TODO: Step 6 - import the story.dart file into this file.
import 'package:quiz_app/story.dart';

//-TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain{



  List<Story> _storyData=[
    Story("FAX stands for First Away Xerox."),
    Story("Freeware is software that is available for use at no monetary cost."),
    Story("The hexadecimal number system contains digits from 1 - 15.',
    Story("Language that the computer can understand is called Machine Language."),
    Story("Magnetic Tape used random access method.',
    Story("Worms and trojan horses are easily detected and eliminated by antivirus software."),
    Story("CPU stands for Central Performance Unit.',
    Story("Dot-matrix, Deskjet, Inkjet and Laser are all types of Printers."),
    Story("Twitter is an online social networking and blogging service."),
    Story("GNU / Linux is a open source operating system."),
    
  ];
  bool buttonShouldBeVisible(){
    if(storyNumber==0|| storyNumber==1||storyNumber==2){
      return true;
    }
    else {
      return false;
    }
  }

  //-TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

  int storyNumber=0;
  //-TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

  void nextStory(int choiceNumber){
    if(storyNumber==0&&choiceNumber==1){
      storyNumber=2;
    }
    else if(storyNumber==0&&choiceNumber==2){
      storyNumber=1;
    }
    else if(storyNumber==1&&choiceNumber==1){
      storyNumber=2;
    }
    else if(storyNumber==1&&choiceNumber==2){
      storyNumber=3;
    }
    else if(storyNumber==2&&choiceNumber==1){
      storyNumber=5;
    }
    else if(storyNumber==2&&choiceNumber==2){
      storyNumber=4;
    }
    else if(storyNumber==3||storyNumber==4||storyNumber==5){
      restart();
    }
  }


  StoryBrain();

  String getStory(){
    return _storyData[storyNumber].storyTitle;
  }

  String getChoice1(){
    return _storyData[storyNumber].choice1;
  }

  String getChoice2(){
    return _storyData[storyNumber].choice2;
  }
//-TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

void restart(){
    storyNumber=0;
}

}

//-TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

//-TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//-TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

//-TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//-TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//-TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.



//-TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//-TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.


//-TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
