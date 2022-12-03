import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osin/settingsdetails.dart';
import 'package:osin/user_info.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme:const IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (ctx){
              return const UserInfo();
            }));
          },
              icon: const Icon(Icons.settings)),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
    );
  }
}
