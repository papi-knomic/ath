import 'package:ath/models/message_model.dart';
import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class MessageList extends StatefulWidget {
  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  List<Messages> messages = [
    Messages(
      age: '26',
      message: "I like your smile it's really cute. You're....",
      name: 'Jones',
      url: '1male.jpg',
    ),
    Messages(
        name: 'Felix',
        age: '21',
        message: "Wanna laugh at Christians with me? I think...",
        url: '2male.jpg',
        read: true),
    Messages(
      name: 'James',
      age: '24',
      message: "Come through let's get naughty. Or are you the shy type...",
      url: '3male.jpg',
    ),
    Messages(
      name: 'Aisha',
      age: '23',
      message: "I think you're cool. And you have beautiful eyes...",
      url: '2female.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                tileColor: vanilla,
                contentPadding: EdgeInsets.all(6),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/${messages[index].url}'),
                ),
                title: Text(
                  '${messages[index].name},  ${messages[index].age}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  messages[index].message,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                trailing: messages[index].read
                    ? null
                    : Icon(
                        Icons.circle,
                        size: 15,
                        color: strawberry,
                      ),
              ),
            );
          }),
    );
  }
}
