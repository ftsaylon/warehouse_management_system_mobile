// Author: Saylon, Francis T.
// Project Name: Solar Warehouse Management System

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/projects.dart';
import '../widgets/card_table.dart';

// Project Details Screen
class ProjectDetailScreen extends StatelessWidget {
  static const routeName = "project-detail";

  @override
  Widget build(BuildContext context) {
    final projectId = ModalRoute.of(context).settings.arguments as String;
    final loadedProject =
        Provider.of<Projects>(context, listen: false).findById(projectId);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    loadedProject.name,
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Text(loadedProject.clientName),
                  Text(loadedProject.amount.toString()),
                  Text(loadedProject.expectedRevenue.toString()),
                  Text(loadedProject.closeDate.toString()),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CardTable(label: "Materials"),
                ),
                Expanded(
                  flex: 1,
                  child: CardTable(label: "Quotations"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}