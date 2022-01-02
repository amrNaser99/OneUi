import 'package:flutter/material.dart';
import 'package:oneui/models/user/user.dart';


class ListViewWithUserModel extends StatelessWidget {

  List<UserModel> list = [
    UserModel(1, 'basu', '+01348745'),
    UserModel(3, 'amr Mostafa', '+01343564'),
    UserModel(4, 'mo Tarek', '+01876845'),
    UserModel(5, 'koko', '+01344965'),
    UserModel(1, 'basu', '+01348745'),
    UserModel(3, 'amr Mostafa', '+01343564'),
    UserModel(4, 'mo Tarek', '+01876845'),
    UserModel(5, 'koko', '+01344965'),
    UserModel(1, 'basu', '+01348745'),
    UserModel(3, 'amr Mostafa', '+01343564'),
    UserModel(4, 'mo Tarek', '+01876845'),
    UserModel(5, 'koko', '+01344965'),
    UserModel(1, 'basu', '+01348745'),
    UserModel(3, 'amr Mostafa', '+01343564'),
    UserModel(4, 'mo Tarek', '+01876845'),
    UserModel(5, 'koko', '+01344965'),
    UserModel(1, 'basu', '+01348745'),
    UserModel(3, 'amr Mostafa', '+01343564'),
    UserModel(4, 'mo Tarek', '+01876845'),
    UserModel(5, 'koko', '+01344965'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text(
          'ListView With User Model'
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context ,index) => ItemList(list[index]),
          separatorBuilder: (context , index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 19.0,
            ),
            child: Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          itemCount: list.length),

    );
  }
}

Widget ItemList(UserModel user) => Padding(
  padding: const EdgeInsets.all(19.0),
  child:   Row(
    children:  [

      CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.indigo,
        child:
        Text(
          '${user.id}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,

          ),
        ),

      ),
      SizedBox(
        width: 15.0,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 30.0,
          ),
          Text(
            '${user.name}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,

            ),
          ),
          Text(
            '${user.phone}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.grey

            ),
          ),
          SizedBox(
            width: 30.0,
          ),


        ],
      ),

    ],
  ),
);