import 'package:flutter/material.dart';

class engzScreen extends StatelessWidget {

  engzScreen({Key? key}) : super(key: key);

  var engzColntroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: const Text(
            'انجز اتنيل'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'اتنيل اكتب انجزت ايه ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: engzColntroller,
                keyboardType: TextInputType.text,
                onFieldSubmitted: (value){
                 scaffoldState.currentState?.
                 showBottomSheet(
                       (context) => Container(
                         height: 30.0,
                   color: Colors.grey[100],
                   padding: const EdgeInsets.all(
                     20.0,
                   ),
                   child: Form(
                     key: formKey,
                     child: Column(
                       mainAxisSize: MainAxisSize.min,

                       children: [
                         Text('لا'),
                       ],
                     ),
                   ),
                 ),);


                },
                decoration:  InputDecoration(
                  labelText: 'نيلت ايه',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
