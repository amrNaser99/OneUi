import 'dart:math' show pow;

import 'package:flutter/material.dart';
import 'package:oneui/mudules/bmi_resault/bmi_resault_screan.dart';

class BMIScrean extends StatefulWidget {
  @override
  _BMIScreanState createState() => _BMIScreanState();
}

class _BMIScreanState extends State<BMIScrean> {

  bool isMale = true;
  double height = 120.0;
  int Age = 20;
  int Weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male,
                              size: 70.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: isMale ? Colors.blue : Colors.grey[400]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              size: 70.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            color: !isMale ? Colors.blue : Colors.grey[400]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${Age}',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'a--',
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                heroTag: 'a++',
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${Weight}',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              FloatingActionButton(
                                heroTag: 'w--',
                                onPressed: () {
                                  setState(() {
                                    Weight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                heroTag: 'w++',
                                onPressed: () {
                                  setState(() {
                                    Weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: MaterialButton(
              onPressed: () {
                double Resault = Weight / pow( height /100, 2);
                print(Resault.round());

                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => BMIResault(Resault: Resault.round(), isMale: isMale, Age: Age),
                    )
                );
              },
              height: 50.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
