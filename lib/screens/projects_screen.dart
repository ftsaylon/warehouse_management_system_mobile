// Author: Saylon, Francis T.
// Project Name: Solar Warehouse Management System

import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/projects_table.dart';

// List of Projects Screen
class ProjectsScreen extends StatelessWidget {
  static const String routeName = "/projects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Projects",
                  style: Theme.of(context).textTheme.headline,
                ),
                RaisedButton(
                  child: Text("Add New Project"),
                  elevation: 0,
                  onPressed: () {},
                ),
              ],
            ),
            ProjectsTable(),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
