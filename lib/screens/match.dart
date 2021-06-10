import 'package:ath/lists/profile_list.dart';
import 'package:ath/screens/messages.dart';
import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class Meet extends StatefulWidget {
  @override
  _MeetState createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.solidEnvelope,
              color: strawberry,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Message();
              }));
            }),
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text(
          'mATcH',
          style: TextStyle(
              color: strawberry, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                FontAwesomeIcons.filter,
                color: strawberry,
              ),
              onPressed: () {})
        ],
      ),
      body: ProfileListMaker(),
    );
  }
}
