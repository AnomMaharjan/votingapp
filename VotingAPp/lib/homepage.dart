import 'package:VotingAPp/agendaVoting.dart';
import 'package:VotingAPp/positionVoting.dart';
import 'package:flutter/material.dart';

import 'imagepicker.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

showProfile() {
  return Container(
    child: Text('Your profile'),
  );
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Welcome User.\nLet\'s vote',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    height: 1.35,
                    fontWeight: FontWeight.bold,
                  )),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.15,
                          bottom: MediaQuery.of(context).size.height * 0.05),
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(8, 8), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AgendaVoting()));
                          },
                          child: Text(
                            'Agenda Voting',
                            style: TextStyle(
                                fontSize: 24,
                                // fontWeight: FontWeight.bold,
                                color: Colors.blue[300]),
                          )),
                      //  Image(
                      // image: AssetImage('images/prixa_image.png'))),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(8, 8), // changes position of shadow
                          ),
                        ],
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PositionVoting()));
                        },
                        child: Text(
                          'Position Voting',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.blue[300],
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 20,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(Icons.home, color: Colors.blue),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.person, color: Colors.blue),
                    onPressed: () {
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
