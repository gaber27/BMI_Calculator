import 'dart:math';
import 'package:bmi_calculator/BMIresult_screen.dart';
import 'package:flutter/material.dart';
class bmi_screen extends StatefulWidget {
  @override
  _bmi_screenState createState() => _bmi_screenState();
}


class _bmi_screenState extends State<bmi_screen> {
  bool isMale = true;
  double heigth = 120.0;
  int weigth =40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculaor'
        ),
      ),
      body:
          Column(
            children: [
              Expanded(
                child:
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   children: [
                     Expanded(
                       child: Container(
                         child:
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           GestureDetector(
                             onTap:()
                             {
                               setState( () {
                                        isMale = true;
                               });
                             },
                             child: Icon(
                               Icons.male,
                              size: 80.0 ,
                             ),
                           ),

                             SizedBox(
                               height: 10.0,
                             ),
                             Text(
                               'MALE',
                               style: TextStyle(
                                 fontSize: 25.0,
                                 fontWeight: FontWeight.bold
                               ),
                             )
                           ],
                         ),
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                          color: isMale? Colors.blue : Colors.grey[400],
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 20.0,
                     ),
                     Expanded(
                       child: GestureDetector(
                         onTap: ()
                         {
                           setState( () {
                               isMale = false;
                           });
                         },
                         child: Container(
                           child:
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(
                                 Icons.female,
                                 size: 80.0,
                               ),
                               SizedBox(
                                 height: 10.0,
                               ),
                               Text(
                                 'FEMALE',
                                 style: TextStyle(
                                   fontSize: 25.0,
                                   fontWeight: FontWeight.bold
                                 ),
                               )
                             ],
                           ),
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: !isMale? Colors.blue: Colors.grey[400],
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               )
              ),
              Expanded(
                child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400],
                  ),
                  child:
                  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style:
                        TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${heigth.round()}',
                        style:
                        TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'CM',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                      )
                    ],
                    ),
                      Slider(
                          value:heigth ,
                          max: 220.0,
                          min: 80.0,
                          onChanged:(value){
                            setState(() {
                              heigth = value;
                            });
                            print(value.round());
                          }
                          )
                    ],
                  ),
                ),
              )
              ),
              Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[400]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGTH',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                '${weigth}',
                                style:
                                TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 40.0
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weigth--;
                                    });
                                  },
                                    heroTag: 'weight-',

                                    mini: true,
                                    child: Icon(
                                  Icons.remove,
                                  ),
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weigth++;
                                    });
                                  },
                                    heroTag: 'weight+',
                                  mini:true,
                                    child:
                                  Icon(
                                    Icons.add,
                                  ),

                                  )
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
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[400]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                '${age}',
                                style:
                                TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 40.0
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                    heroTag: 'age-',
                                    mini: true,
                                    child: Icon(
                                  Icons.remove,
                                  ),
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                    heroTag: 'age+',
                                  mini:true,
                                    child:
                                  Icon(
                                    Icons.add,
                                  ),

                                  )
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
                color: Colors.blue,
                child: MaterialButton(onPressed: (){
                  double result = weigth / pow(heigth/100,2);
                  print(result.round());

                  Navigator.push(
                    context,
                     MaterialPageRoute(
                      builder: (context)=> BMIresult_screen
                        (
                        age: age,
                        result: result.round(),
                        isMale: isMale,
                      ),
                    ),
                    );
                },
                      height: 50.0,
                  child:
                  Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          )
    
    );
  }
}
