import 'package:flutter/material.dart';

class AgendaVoting extends StatefulWidget {
  @override
  _AgendaVotingState createState() => _AgendaVotingState();
}

class _AgendaVotingState extends State<AgendaVoting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.7,
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Agenda 1',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        ),
                        Text('Description'),
                      ],
                    ),
                    elevation: 20,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.7,
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Agenda 2',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        ),
                        Text('Description'),
                      ],
                    ),
                    elevation: 20,
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width*0.7,
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Agenda 3',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        ),
                        Text('Description'),
                      ],
                    ),
                    elevation: 20,
                  ),
                ),
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
                  tooltip: 'Home',
                    icon: Icon(Icons.home,
                    color: Colors.blue,),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                IconButton(
                  tooltip: 'Profile',
                  icon: Icon(Icons.person,
                color: Colors.blue,),
                onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
