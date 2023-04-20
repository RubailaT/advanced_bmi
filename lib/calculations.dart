import 'dart:math';

class Calculations{
late final int height;
late final int weight;



Calculations({required this.height, required this.weight});

  late  double bmi=0;

String calc(){
 bmi=weight/pow(height/100,2);
 return bmi.toStringAsFixed(2);

}
String result(){
 if(bmi>=25){
  return "overweight";
 }
 else if(bmi>=18.5){
  return "Normal";
 }
 else{
  return "underweight";
 }
}
String Comments(){
 if(bmi>=25){
  return "YOU ARE NOT IN CONTROL! NEED EXCERCISE";
 }
 else if(bmi>=18.5){
  return "Yoh have a normal body weight.Good job!";
 }
 else{
  return "You are underweight!";
 }
}



}