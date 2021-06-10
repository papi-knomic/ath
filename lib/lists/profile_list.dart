import 'package:ath/models/profile_models.dart';
import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class ProfileListMaker extends StatefulWidget {
  @override
  _ProfileListMakerState createState() => _ProfileListMakerState();
}

class _ProfileListMakerState extends State<ProfileListMaker> {
  List<Profile> profile = [
    Profile(
        name: 'Jones',
        url: '1male.jpg',
        location: 'Lagos, NG',
        gender: true,
        age: '26',
        info: 'Single and looking for love',
        interests: ['Cooking', 'Dancing', 'Traveling']),
    Profile(
      name: 'James',
      age: '24',
      gender: true,
      interests: ['Reading', 'Clubbing'],
      location: 'Sydney, AU',
      info: "I'm just trying to fuck. Please i don't need love",
      url: '3male.jpg',
    ),
    Profile(
        name: 'Felix',
        url: '2male.jpg',
        location: 'London, UK',
        gender: true,
        age: '21',
        info: 'Single and and not searching, just want friends',
        interests: ['Partying', 'Drawing']),
    Profile(
        name: 'Tina',
        url: '1female.jpg',
        location: 'Texas, USA',
        gender: false,
        age: '25',
        info: 'Just here for fun',
        interests: ['Singing', 'Knitting', 'Netflix']),
    Profile(
        name: 'Aisha',
        url: '2female.jpeg',
        location: 'Dubai, UAE',
        gender: false,
        age: '23',
        info: "I joined cause I'm bored",
        interests: [
          'Cooking',
          'Dancing',
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return profile.length > 0
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: profile.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var string = profile[index].interests.join(', ');
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: vanilla,
                  margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/${profile[index].url}'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "${profile[index].name},",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: black),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  profile[index].age,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: black),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                profile[index].gender
                                    ? Icon(
                                        LineIcons.mars,
                                        color: Colors.blue,
                                        size: 25,
                                      )
                                    : Icon(
                                        LineIcons.venus,
                                        color: strawberry,
                                        size: 25,
                                      )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              profile[index].location,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              profile[index].info,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Interests: $string',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FlatButton.icon(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      minWidth: 150,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      textColor: Colors.white,
                                      onPressed: () {},
                                      color: strawberry,
                                      icon: Icon(
                                        LineIcons.heartAlt,
                                        color: Colors.white,
                                      ),
                                      label: Text('Like')),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  FlatButton.icon(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      minWidth: 150,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      textColor: black,
                                      onPressed: () {
                                        setState(() {
                                          profile.remove(profile[index]);
                                        });
                                      },
                                      color: Colors.white,
                                      icon: Icon(
                                        FontAwesomeIcons.timesCircle,
                                        color: black,
                                      ),
                                      label: Text('Decline'))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        : Center(
            child: Text(
              'No Match Found',
              style: TextStyle(fontSize: 30, color: strawberry),
            ),
          );
  }
}
