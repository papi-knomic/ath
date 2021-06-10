import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
              color: strawberry, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sharon,',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('24',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: grey,
                          fontStyle: FontStyle.italic)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
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
                'ABOUT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Divider(
                height: 5,
                thickness: 1,
                color: black,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We're here today gone tomorrow, so don't be shy to drop a message. Please no hookups, just here to make friends",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
