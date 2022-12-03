import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:osin/screens/create_widget1.dart';

import 'create_widget.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});


  @override
  Widget build(BuildContext context)  {
   
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: buildGridView()) 
           
        ),
      ),
    );
  }
}
