   import 'package:advanced_bmi/advanced_bmi.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatefulWidget {

  final String text;
  final String value;
  final String endtext;
  BmiResult({required this.text, required this.value, required this.endtext});


  @override
   State<BmiResult> createState() => _BmiResultState();
 }

 class _BmiResultState extends State<BmiResult> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: Colors.black,
         title: Text("BMI CALCULATOR"),

       ),

       backgroundColor: Colors.black,
       body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,


         children: [
           Padding(
             padding: const EdgeInsets.only(left: 85,top: 30),
             child: Expanded(
               child: Text("Your Result",style:
               TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white)),
             ),
           ),
           SizedBox(height: 30,),
           Expanded(
             child: Container(

             margin: EdgeInsets.all(10),
     decoration: BoxDecoration(
     color:Color(0xcf231D1D),
     borderRadius: BorderRadius.circular(10),

     ),


                   child: Column(mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       SizedBox(height: 50,),

                       Expanded(
                         child: Text( widget.text.toUpperCase(),style:
                   TextStyle(fontSize: 25,

                         fontWeight: FontWeight.bold,color: Colors.green)),
                       ),
                       SizedBox(height: 40,),


                       Expanded(
                         child: Text(widget.value,style:
                         TextStyle(fontSize: 100,
                             fontWeight: FontWeight.bold,color: Colors.white)),
                       ),
                       SizedBox(height: 50,),


                       Expanded(
                         child: Center(
                           child: Text(widget.endtext,style:
                           TextStyle(fontSize: 20,
                               color: Colors.white)),
                         ),
                       ),
                       SizedBox(height: 50,),

                     ],
                   ),

               ),


           ),
           ElevatedButton(onPressed: (){

            Navigator.pop(context);

           },
               style: ElevatedButton.styleFrom(
                 primary: Colors.pink,
               ),
               child: Text("Re-calculate"))

       ],
       ),
     );
   }
 }
