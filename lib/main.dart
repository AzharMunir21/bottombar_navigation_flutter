import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation());}}




class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomNavigation> {
  int pageIndex = 0;

  final pages = [
    Pages( pageNumber: 'Page number 1',),
    Pages( pageNumber: 'Page number 2',),
    Pages( pageNumber: 'Page number 3',),
    Pages( pageNumber: 'Page number 4',),
    Pages( pageNumber: 'Page number 5',),
    Pages( pageNumber: 'Page number 6',),
    Pages( pageNumber: 'Page number 7',),
    Pages(pageNumber: 'Page number 8',),
    Pages( pageNumber: 'Page number 9',),
    Pages( pageNumber: 'Page number 10',),
    Pages( pageNumber: 'Page number 11',),
    Pages( pageNumber: 'Page number 12',),

  ];
String title='Page 1';
  Widget line() {
    return Container(
      margin: const EdgeInsets.only(top: 5,bottom: 5),
      color: Colors.black,
      height: 100,
      width:1.5,
    );
  }
Color colors=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text(title),
     backgroundColor: Colors.green,
     ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      // width:100,
        margin: const EdgeInsets.only(bottom: 30),
      height: 100,
      decoration: const BoxDecoration(
        // color: Color(0xffC4DFCB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),

          // border: Border.all(
          //   color: Colors.black,
          //   width: 7,
          //   style: BorderStyle.solid,
          // )

      ),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  color: Colors.black,
                  width:1,
                  style: BorderStyle.solid,
                )

              ),

              child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Containers(ontab:(){

    setState(() {
      // colors=Colors.green;
      print('helo');
          pageIndex = 0;
      title='Page 1';
      print(pageIndex);
        });

          }, intVal:1, bgColor:pageIndex==0?Colors.green:Colors.white,),

          line(),
          Containers(ontab:(){

            setState(() {
              colors=Colors.green;
              print('helo');
              pageIndex = 1;
              title='Page 2';
              print(pageIndex);
            });

          }, intVal:2, bgColor:pageIndex==1?Colors.green:Colors.white,),
          line(),
        Containers(ontab:(){

          setState(() {
            print('helo');
            pageIndex = 2;
            print(pageIndex);
            title='Page 3';
          });

        }, intVal:3, bgColor:pageIndex==2?Colors.green:Colors.white,),
          line(),
          Containers(ontab:(){

            setState(() {
              print('helo');
              pageIndex = 3;
              print(pageIndex);
              title='Page 4';
            });

          }, intVal:4, bgColor:pageIndex==3?Colors.green:Colors.white,),
          line(),
          Containers(ontab:(){

            setState(() {
              print('helo');
              pageIndex = 4;
              print(pageIndex);
              title='Page 5';
            });

          }, intVal:5, bgColor:pageIndex==4?Colors.green:Colors.white,),


          line(),
        Containers(ontab:(){

          setState(() {
            print('helo');
            pageIndex = 5;
            print(pageIndex);
            title='Page 6';
          });

        }, intVal:6, bgColor:pageIndex==5?Colors.green:Colors.white,),


          line(),



          Containers(ontab:(){

            setState(() {
              // colors=Colors.green;
              print('helo');
              pageIndex = 6;
              print(pageIndex);
              title='Page 7';
            });

          }, intVal:7, bgColor:pageIndex==6?Colors.green:Colors.white,),

          line(),
          Containers(ontab:(){

            setState(() {
              colors=Colors.green;
              print('helo');
              pageIndex = 7;
              print(pageIndex);
              title='Page 8';
            });

          }, intVal:8, bgColor:pageIndex==7?Colors.green:Colors.white,),
          line(),
          Containers(ontab:(){

            setState(() {
              print('helo');
              pageIndex = 8;
              print(pageIndex);
              title='Page 9';
            });

          }, intVal:9, bgColor:pageIndex==8?Colors.green:Colors.white,),
          line(),
          Containers(ontab:(){

            setState(() {
              print('helo');
              pageIndex = 9;
              print(pageIndex);
              title='Page 10';
            });

          }, intVal:10, bgColor:pageIndex==9?Colors.green:Colors.white,),
          line(),
          Containers(ontab:(){

            setState(() {
              print('helo');
              pageIndex = 10;
              print(pageIndex);
              title='Page 11';
            });

          }, intVal:11, bgColor:pageIndex==10?Colors.green:Colors.white,),


          line(),
          Containers(ontab:(){

            setState(() {
              print('helo');
              pageIndex = 11;
              print(pageIndex);
              title='Page 12';
            });

          }, intVal:12, bgColor:pageIndex==11?Colors.green:Colors.white,),







        ],
      ))


      ));
  }
}


class Containers extends StatelessWidget {
  final Function() ontab;
  final int intVal;
  final Color? bgColor;
  Containers({required this.ontab, required this.intVal, required this.bgColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:ontab,
        child:Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 5,top: 5,bottom: 5),
          color:bgColor?? Colors.white,
       width:MediaQuery.of(context).size.width*0.20,
      child:Column(children: [


        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: Text('$intVal'),

          ),

        ),
        SizedBox(height: 5,),
        Text('name')



      ],) ,

    ));
  }
}

class Pages extends StatelessWidget {
  final String pageNumber;

  Pages({ required this.pageNumber,});
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        Text(pageNumber)
           

      ],),




    );
  }
}
