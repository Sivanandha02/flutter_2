import 'package:flutter/material.dart';
import 'package:flutter_2/utils/mycolors.dart';
import 'package:flutter_2/utils/mytheme.dart';

class HomePage extends StatelessWidget {
  var users = [
    {
      'name': "siva",
      'phone': 934854545,
      'pic':
          "https://cdn2.iconfinder.com/data/icons/icontober/64/Inkcontober_Squeak-64.png",
      'time': 1.20,
      'unread': 3,
    },
    {
      'name': "riva",
      'phone': 934854545,
      'pic':
          "https://cdn2.iconfinder.com/data/icons/icontober/64/Inkcontober_Squeak-64.png",
      'time': 1.20,
      'unread': 3,
    },
    {
      'name': "miva",
      'phone': 934854545,
      'pic':
          "https://cdn2.iconfinder.com/data/icons/icontober/64/Inkcontober_Squeak-64.png",
      'time': 1.20,
      'unread': null,
    },
    {
      'name': "sia",
      'phone': 934854544,
      'pic':
          "https://cdn2.iconfinder.com/data/icons/icontober/64/Inkcontober_Squeak-64.png",
      'time': 1.20,
      'unread': 3,
    },
    {
      'name': "siva",
      'phone': 934854545,
      'pic':
          "https://cdn2.iconfinder.com/data/icons/icontober/64/Inkcontober_Squeak-64.png",
      'time': 1.20,
      'unread': 3,
    },
    {
      'name': "siva",
      'phone': 934854545,
      'pic':
          "https://cdn2.iconfinder.com/data/icons/icontober/64/Inkcontober_Squeak-64.png",
      'time': 1.20,
      'unread': null,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My contacts",
          style: MyTextThemes.textHeading,
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      // body: ListView(
      //   children: [
      //     Text("dart 1"),
      //     Text("dart2"),
      //     Text("dart 3"),
      //     Text("dart 4")
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
              users.length,
              (index) => Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.iconColors,
                        backgroundImage: NetworkImage("${users[index]['pic']}"),
                      ),

                      // trailing: Wrap(
                      //   direction: Axis.vertical,
                      //   children: [
                      //     Text("${users[index]['time']}"),
                      //     CircleAvatar(
                      //       minRadius: 6,
                      //       maxRadius: 14,
                      //       child: Text("${users[index]['unread']}"),
                      //     )
                      //   ],
                      // ),
                      trailing: _buildWidget(index),
                      title: Text("${users[index]['name']}"),
                      subtitle: Text("9857341728"),
                    ),
                  )),
        ),
      ),
    );
  }

  Widget _buildWidget(int index) {
    if (users[index]['unread'] == null) {
      return Text("${users[index]['time']}");
    } else {
      return Wrap(
        direction: Axis.vertical,
        children: [
          Text("${users[index]['time']}"),
          CircleAvatar(
            minRadius: 6,
            maxRadius: 14,
            child: Text("${users[index]['unread']}"),
          )
        ],
      );
    }
  }
}
