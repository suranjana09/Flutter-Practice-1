import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios),
          onPressed: () {
          Navigator.pop(context);
          },
          color: Colors.black,
        ),
        title: const Text('Change Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Center(
        child: Container(
          child: const Text('This is change password page.',style: TextStyle(fontSize: 16),),
        ),
      ),

    );
  }
}
