//@dart=2.9

import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String name;
  final String designation;
  final String company;

  const ProfileHeaderWidget({
    @required this.company,
    @required this.designation,
    @required this.name,
    Key key,
  }) : super(key: key);
//crucial league and its a running away
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.blue,
        height: 120,
        padding: EdgeInsets.all(16).copyWith(left: 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(color: Colors.white),
                Expanded(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildIcon(Icons.call),
                    SizedBox(width: 15),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return AlertDialog(
                                actions: [
                                  
                                  Row(
                                    children: [
                                      Text(
                                          "Are you sure you want to delete this chat?"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {}, child: Text("Yes")),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {}, child: Text("No"))
                                    ],
                                  )
                                ],
                              );
                            },
                          ));
                        },
                        icon: Icon(Icons.block))
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  designation ?? '',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                Text(
                  company ?? '',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ],
        ),
      );

  Widget buildIcon(IconData icon) => Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white54,
        ),
        child: Icon(icon, size: 25, color: Colors.white),
      );
}
