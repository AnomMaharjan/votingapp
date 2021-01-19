import 'package:flutter/widgets.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}



class CandidatePosition extends StatelessWidget {
    final List<Post> post;

    CandidatePosition({Key key, @required this.post}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PositionDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
