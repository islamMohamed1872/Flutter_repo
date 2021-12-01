import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleSpacing: 15.0,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/87488041_1665565503583981_3714861520916578304_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=3aBZzjZ-Do8AX_4fMJM&_nc_ht=scontent.fcai19-4.fna&oh=75141fb0d114454b42bc310e1e73b727&oe=615C9B53'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white38.withOpacity(0.23),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20,
                )),
          ),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white38.withOpacity(0.23),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20.0,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.32),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 20,
                        ),
                    itemCount: 10),
              ),
              SizedBox(
                height: 15.0,
              ),
               ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    height: 20,
                  ),
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Container(
            width: 60,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/232972852_2118166154990578_5456836072257238138_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=AVsFL8QbHmkAX_BAKgo&tn=FMl4Hw8VDhGdDFTU&_nc_ht=scontent.fcai19-4.fna&oh=cc86d00580025e1eeb8d08bdcbac51d5&oe=615D3D40'),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Islam Mohamed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello my name is islam, i would like to invite you to attend',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(
                        radius: 2.5,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Text(
                      '02:00 pm',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/232972852_2118166154990578_5456836072257238138_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=AVsFL8QbHmkAX_BAKgo&tn=FMl4Hw8VDhGdDFTU&_nc_ht=scontent.fcai19-4.fna&oh=cc86d00580025e1eeb8d08bdcbac51d5&oe=615D3D40'),
                ),
                CircleAvatar(
                  radius: 9.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 6.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Islam Mohamed',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
  Widget buildkhara() {
    return Container(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 28.0,
                backgroundColor: Colors.white38.withOpacity(0.23),
                child: Icon(
                  Icons.video_call_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            'Create room',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
