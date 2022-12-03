import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewThird extends StatefulWidget {
  const NewThird({super.key});

  @override
  State<NewThird> createState() => _NewThirdState();
}

class _NewThirdState extends State<NewThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Your Cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
        body: SingleChildScrollView(
          child: Container(
             height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 50),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    
                    width: 200,
                    child: Image.network(
                              'https://media.istockphoto.com/id/1190645702/photo/mans-hand-playing-acoustic-guitar.jpg?s=612x612&w=0&k=20&c=3I-q9DDi-U9Yup0iFEfRjMVzpicM-NHH2xSlxg_W870='),
                  ),
                 
                ],
                
              ),
            ),
            
           
          
          )
        ),
    );
  }
}