import 'package:flutter/material.dart';
import 'package:destini/storybrain.dart';

void main() {
  runApp(destiniPage());
}

class destiniPage extends StatelessWidget {
  const destiniPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: destini(),
    );
  }
}

storyBrain StoryBrain = storyBrain();

class destini extends StatefulWidget {
  const destini({Key? key}) : super(key: key);

  @override
  State<destini> createState() => _destiniState();
}

class _destiniState extends State<destini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/galaxy.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    StoryBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState((){
                      StoryBrain.nextStory(1);
                    },
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.white,
                  ),
                  child: Text(
                    StoryBrain.getChoice1(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: StoryBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState((){
                        StoryBrain.nextStory(2);
                      },
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      primary: Colors.white,
                    ),
                    child: Text(
                      StoryBrain.getChoice2(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
