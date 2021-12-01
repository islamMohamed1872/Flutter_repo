import 'package:flutter/material.dart';
import 'package:fproject/models/user/user_model.dart';
class UsersScreen extends StatelessWidget {
  List<UserModel> user = [
    UserModel(id: 1,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 2,
        name: 'Mo Moghraby',
        phone: '+20112354536'
    ),
    UserModel(id: 3,
        name: 'Ali H Omar',
        phone: '+20135342563'
    ),
    UserModel(id: 4,
        name: 'Salah',
        phone: '+20113254366'
    ),
    UserModel(id: 5,
        name: 'Ali Shams',
        phone: '+2012346574'
    ),
    UserModel(id: 6,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 7,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 8,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 9,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 10,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 11,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 12,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 13,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),
    UserModel(id: 14,
        name: 'Islam Mohamed',
        phone: '+201554270294'
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(user[index]),
          separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                child: Container(
                  height: 1.00,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
              ),
          itemCount: user.length),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
