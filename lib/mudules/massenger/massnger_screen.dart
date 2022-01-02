import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//2

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 16.0,

        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
            ),
            SizedBox(
              width: 16.0,
            ),
            Text(
              'Chats',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 15.0,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 15.0,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
              ),
              SizedBox(height:  20.0,),
              Container(
                height: 110.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index) => buildStoryItem(),
                  separatorBuilder: (context , index) => SizedBox(width: 10.0,),
                  itemCount: 10,
                ),
              ),
              SizedBox(height:  20.0,),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context , index) => buildChatItem(),
                  separatorBuilder: (contex , index)=>SizedBox(height:  10.0,),
                  itemCount: 30),




            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Row(
    children: [
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20.0,
      ),
      SizedBox(
        width: 60.0,
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
                ),
                CircleAvatar(
                    radius: 10.0, backgroundColor: Colors.white),
                CircleAvatar(
                    radius: 9.0, backgroundColor: Colors.green),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Amr Nasser',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildChatItem()  => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/240338741_4245962198858296_5385196750258216709_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFyTofIMpie6Em6rIudf2f4EAeDuAomzPIQB4O4CibM8sb4s9byrOhVcSvgbwA6y6_sfuBSyFj3R8ptbYNaE6TG&_nc_ohc=SJdQa221P44AX8Bk4G9&_nc_ht=scontent-hbe1-1.xx&oh=d1780661190817ca5713ecfa0b411234&oe=616D63CB'),
          ),
          CircleAvatar(
              radius: 10.0, backgroundColor: Colors.white),
          CircleAvatar(
              radius: 9.0, backgroundColor: Colors.green),
        ],
      ),
      SizedBox(width: 20.0,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Amr Nasser',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0,),
          Row(
            children: [
              Text(
                  'This is A Massege in Flutter '
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,

                  ),
                ),
              ),
              Text(
                  '04:00 pm'
              ),
            ],
          )
        ],
      ),
    ],
  );






}
