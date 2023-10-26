import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState()=>_CounterScreenState();

}

class _CounterScreenState extends State<CounterScreen>{
  int contador = 0;
  TextStyle EstiloFuente30 = const TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      toolbarHeight: 60,
      title: Text("Counter Screen", style: EstiloFuente30),
      elevation: 10
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Numero de clicks", style: EstiloFuente30,),
        Text("$contador",style:EstiloFuente30,),
      ],)
    ),

    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
         child: const Text ("-", style: TextStyle (fontSize: 24 ),),
         onPressed: (){
          setState(() {

            (contador > 0) ? contador -- : 0;
           
          }); }),

           FloatingActionButton(
         child: const Icon(Icons.refresh),
         onPressed: (){
          setState(() {
            contador = 0;
          });  }),

           FloatingActionButton(
         child: const Text ("+", style: TextStyle (fontSize: 24 ),),
         onPressed: (){
          setState(() {
            contador ++;
          });

         }
        ),
      ],
    ),
   );
  }

}