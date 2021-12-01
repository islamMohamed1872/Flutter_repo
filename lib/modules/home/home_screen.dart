import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
              ),
              onPressed: onNotification),
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              print('search clicked');
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                    image: NetworkImage(
                        'https://i.ytimg.com/vi/dip_8dmrcaU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDiKVLpV-DNq4PXYr2jNBL2mt4bqg'),
                  ),
                  Container(
                    color: Colors.black.withOpacity(.3),
                    width: 200,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text('CAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onNotification() {
    print('notification clicked');
  }
}
