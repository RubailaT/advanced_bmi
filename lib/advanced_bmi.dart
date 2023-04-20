import 'package:advanced_bmi/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'calculations.dart';
enum SelectedGender{male,female}

class AdvancedBmi extends StatefulWidget {
  const AdvancedBmi({Key? key}) : super(key: key);

  @override
  State<AdvancedBmi> createState() => _AdvancedBmiState();
}

class _AdvancedBmiState extends State<AdvancedBmi> {
  SelectedGender? gender;
 int _currentSliderValue=100;
 int weight=10;
 int age=10;
 late var result;
 // int counter=0;
 // int less=0;
 //  void incrementCounter() {
 //    setState(() {
 //
 //      counter++;
 //    });
 //  }
 //  void decrementCounter() {
 //    setState(() {
 //
 //     less--;
 //    });
 //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                   child: InkWell(
                     onTap: (){
                       print("tapped");
                       setState(() {
                         gender=SelectedGender.male;
                         print(gender);
                       });
                       },
                     child: Container(
                       margin: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                         color: gender==SelectedGender.male?Colors.pink:Color(0xcf231D1D),
                         borderRadius: BorderRadius.circular(10),

                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [

                     Icon(
                       FontAwesomeIcons.mars,
                               size: 80,
                               color: Colors.white,
                             ),


                           SizedBox(height: 20,),
                           Text("MALE",style: TextStyle(color: Colors.white,fontSize: 20),),
                         ],
                       ),
                     ),
                   ),
          //ReusableContainer(
                  //     widget: IconContent(icon: FontAwesomeIcons.mars, text: "MALE"),
                  //     forpress: () {},
                  //     color: Color(0xcff080360)),
                ),
                Expanded(
                  child: InkWell(onTap: (){
                    print("tapped");
                    setState(() {

                      gender=SelectedGender.female;
                      print(gender);
                    });

                  },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: gender==SelectedGender.female?Colors.pink:Color(0xcf231D1D),


                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80,
                            color: Colors.white,
                          ),

                          SizedBox(height: 20,),
                          Text("FEMALE",style: TextStyle(color: Colors.white,fontSize: 20),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 20,),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xcf231D1D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(height: 30,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text( _currentSliderValue.toString(),
                          style: TextStyle(color: Colors.grey,
                              fontSize: 40,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),

                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 1,
                      ),
                      child: Slider(
                        activeColor: Colors.white,
                        inactiveColor: Colors.grey,
                        thumbColor: Colors.pink,
                        value: _currentSliderValue.toDouble(),
                        min: 100,
                        max: 250,
                        // divisions: 100,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

    Expanded(
    child: Row(
    children: <Widget>[
    Expanded(
    child: Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color:Color(0xcf231D1D),
    borderRadius: BorderRadius.circular(10),

    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("WEIGHT",style: TextStyle(color: Colors.white,fontSize: 20),),
      SizedBox(height: 30,),
      Text(weight.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
         FloatingActionButton(onPressed: (){
          setState(() {
            weight--;
          });
         },
           backgroundColor: Colors.grey,
           child: Icon(FontAwesomeIcons.minus),

         ),
          SizedBox(width: 30,),
          FloatingActionButton(onPressed: (){
      setState(() {
        weight++;
      });
          },
            backgroundColor: Colors.grey,
              child: Icon(FontAwesomeIcons.plus),

            ),
        ],
      ),
    ],
    ),
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
    color:Color(0xcf231D1D),
    borderRadius: BorderRadius.circular(10),

    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("AGE",style: TextStyle(color: Colors.white,fontSize: 20),),
      SizedBox(height: 30,),
      Text(age.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){
            setState(() {
              age--;
            });
          },
            backgroundColor: Colors.grey,
            child: Icon(FontAwesomeIcons.minus),

          ),


          SizedBox(width: 30,),
          FloatingActionButton(onPressed: (){
            // onPressed: incrementCounter();
            // decrementCounter();
          setState(() {
           age++;
          });
          },
            backgroundColor: Colors.grey,
            child: Icon(FontAwesomeIcons.plus),

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



       Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: (){
                    Calculations calculation=Calculations(height: _currentSliderValue, weight: weight);

                Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>BmiResult(
                      text:calculation.result(),
                      value:calculation.calc(),
                      endtext:calculation.Comments(),
                    )));
              },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                  ),
                  child: Text("CALCULATE")),
            ),

                    ],
                  ),

    );





  }
  void calculate() {
    void calculate() {

      double height=double.parse(_currentSliderValue.toString())/100;
      double weights=double.parse(weight.toString());
      double h=height*height;
      double results=weight/h;

      setState(() {
        result=results;
      });

    }

  }
}

//     Expanded(
//         child: Row(
//           children: [
//
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ExtreactContainer(),
//             ),
// SizedBox(width: 10,),
//             Container(
//               height:200,
//               width: 180,
//               decoration: BoxDecoration(
//                 color: Color(0xcff080360),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("AGE",style:
//                   TextStyle(color: Colors.grey,fontSize: 20),),
//
//
//                 ],
//               ),
//             ),
//
//           ],
//         ))
//         ],
//       ),
//     );
//   }
// }
//
// class IconContent extends StatelessWidget {
//   IconData icon;
//   String text;
//
//   IconContent({required this.icon, required this.text});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(
//           icon,
//           size: 30,
//           color: Colors.white,
//         ),
//         Text(text)
//       ],
//     );



// class ExtreactContainer extends StatelessWidget {
//   late String text;
//   late IconData icons;
//
//
//   ExtreactContainer(this.text, this.icons);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:200,
//       width: 180,
//       decoration: BoxDecoration(
//         color: Color(0xcff080360),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Text("WEIGHT",style:
//           // TextStyle(color: Colors.grey,fontSize: 20),),
//
//           SizedBox(height: 20,),
//           Row(mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               FloatingWidget(icon: Icons., onpress: () {
//
//
//               },),
//               SizedBox(width: 20,),
//               FloatingWidget(icon: Icons.add, onpress: (){
//
//               })
//
//
//             ],
//           )
//
//
//         ],
//       ),
//     );
//   }
// }

// class FloatingWidget extends StatelessWidget {
//   late IconData icon;
//   late VoidCallback onpress;
//
//   FloatingWidget({required this.icon, required this.onpress});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 40,
//       child: FloatingActionButton(
//         child: Icon(icon),
//         backgroundColor: Colors.grey,
//         onPressed: () => onpress(),
//       ),
//     );
//   }
// }
//
// class ReusableContainer extends StatelessWidget {
//   Widget widget;
//   VoidCallback forpress;
//   Color color;
//
//   ReusableContainer(
//       {required this.widget,
//       required this.forpress,
//       required this.color}); // late IconData icons;
//   // late String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: forpress,
//       child: Container(
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }
// }
