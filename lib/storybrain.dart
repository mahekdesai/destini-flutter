import 'package:destini/story.dart';

class storyBrain {
  int _sno = 0;
  List<Story> _stories = [
    Story(
        stitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        c1: 'I\'ll hop in. Thanks for the help!',
        c2: 'Better ask him if he\'s a murderer first.'),
    Story(
        stitle: 'He nods slowly, unphased by the question.',
        c1: 'At least he\'s honest. I\'ll climb in.',
        c2: 'Wait, I know how to change a tire.'),
    Story(
        stitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        c1: 'I love Elton John! Hand him the cassette tape.',
        c2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        stitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        c1: 'Restart',
        c2: ''),
    Story(
        stitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        c1: 'Restart',
        c2: ''),
    Story(
        stitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        c1: 'Restart',
        c2: '')
  ];

  String getStory() {
    return _stories[_sno].storyTitle;
  }

  String getChoice1() {
    return _stories[_sno].choice1;
  }

  String getChoice2() {
    return _stories[_sno].choice2;
  }

  void nextStory(int choiceNo) {
    if (choiceNo == 1){
      if(_sno == 0){
        _sno = 2;
        getStory();
        getChoice1();
        getChoice2();
      }
      else if(_sno == 1){
        _sno = 2;
        getStory();
        getChoice1();
        getChoice2();
      }
      else if(_sno == 2){
        _sno = 5;
        getStory();
        getChoice1();
        getChoice2();
      }
      else if(_sno == 3){
        reset(_sno);
      }
      else if(_sno == 4){
        reset(_sno);
      }
      else if(_sno == 5){
        reset(_sno);
      }
    }
    else if(choiceNo == 2){
      if(_sno == 0){
        _sno = 1;
        getStory();
        getChoice1();
        getChoice2();
      }
      else if(_sno == 1){
        _sno = 3;
        getStory();
        getChoice1();
        getChoice2();
      }
      else if(_sno == 2){
        _sno = 4;
        getStory();
        getChoice1();
        getChoice2();
      }
      else if(_sno == 3){
        reset(_sno);
      }
      else if(_sno == 4){
        reset(_sno);
      }
      else if(_sno == 5){
        reset(_sno);
      }
    }
  }

  void reset(int sno){
    _sno = 0;
  }

  bool buttonShouldBeVisible(){
    if(_sno == 0 || _sno == 1 || _sno == 2){
      return true;
    }
    else{
      return false;
    }
  }
}