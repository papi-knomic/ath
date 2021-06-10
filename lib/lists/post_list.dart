import 'package:ath/models/post_models.dart';
import 'package:ath/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List<Post_Model> posts = [
    Post_Model(
        name: 'Tina',
        time: '20 seconds ago',
        post: 'I think @6ft_genie is very tall. She gives me tall girl vibes',
        image: false,
        avi: '1female.jpg'),
    Post_Model(
        name: 'Sharon',
        time: '7 minurtes ago',
        post: 'I just started learning Javascript and I love it so so much.',
        image: true,
        avi: 'profile.jpg',
        imageUrl: 'love.jpg'),
    Post_Model(
        name: 'James',
        time: '3 minutes ago',
        post: 'I think Jesus just like Mohammed were frauds',
        image: false,
        avi: '3male.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return posts[index].image
                ? Card(
                    elevation: 3.0,
                    shadowColor: black,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 12),
                      child: Column(
                        children: [
                          Row(children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/${posts[index].avi}'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  posts[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  posts[index].time,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ]),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/${posts[index].imageUrl}'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            child: Text(
                              posts[index].post,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    LineIcons.comment,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    LineIcons.thumbsUp,
                                    color: Colors.blue[900],
                                    size: 35,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    LineIcons.share,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    LineIcons.horizontalEllipsis,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {})
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Card(
                    elevation: 3.0,
                    shadowColor: black,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 12),
                      child: Column(
                        children: [
                          Row(children: <Widget>[
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/${posts[index].avi}'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  posts[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  posts[index].time,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ]),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            child: Text(
                              posts[index].post,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    LineIcons.comment,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    LineIcons.thumbsUp,
                                    color: Colors.blue[900],
                                    size: 35,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    LineIcons.share,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    LineIcons.horizontalEllipsis,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {})
                            ],
                          )
                        ],
                      ),
                    ),
                  );
          }),
    );
  }
}
