// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:app_web/centered_view/centered_view.dart';
import 'package:app_web/widgets/navigation_bar/navigation_bar.dart';

import '../call_to_action/call_to_action.dart';
import '../course_details/course_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar2(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                      child: Center(
                    child: CallToAction(title: 'Join Course'),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
