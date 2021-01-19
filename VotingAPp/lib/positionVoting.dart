import 'package:flutter/material.dart';
import 'positionCandidates.dart';
import 'package:image_picker/image_picker.dart';

class PositionVoting extends StatefulWidget {
  @override
  _PositionVotingState createState() => _PositionVotingState();
}

List<dynamic> posts = ['CEO', 'COO', 'HR Manager', 'Teacher', 'Head Sir'];
List<dynamic> descriptions = [
  'Very Nice',
  'Friendly',
  'Cooperative',
  'Obedient',
  'Helpful'
];

class _PositionVotingState extends State<PositionVoting> {
  // List<dynamic> posts = ['CEO', 'COO', 'HR Manager', 'Teacher', 'Head Sir'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
          body: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                ),
                Text(
                  'Vote for the position',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 300,
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(posts.length, (index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.01),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Card(
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NewPage()));
                                  },
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${posts[index]}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue[300]),
                                      ),
                                      // Text('Description'),
                                    ],
                                  ),
                                ),
                                elevation: 1,
                              ),
                            );
                          }),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      tooltip: 'Home',
                      icon: Icon(
                        Icons.home,
                        size: 26,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      tooltip: 'Home',
                      icon: Icon(
                        Icons.analytics_sharp,
                        size: 26,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      tooltip: 'Profile',
                      icon: Icon(
                        Icons.person,
                        size: 26,
                        color: Colors.blue,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('heeeee'),
    );
  }
}
