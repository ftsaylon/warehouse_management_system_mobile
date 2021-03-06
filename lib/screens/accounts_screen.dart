// Author: Saylon, Francis T.
// Project Name: Solar Warehouse Management System

import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/accounts_table.dart';
import '../modals/edit_account_modal.dart';

// List of Accounts Screen
class AccountsScreen extends StatelessWidget {
  static const String routeName = "/accounts";

  _showAddEditModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => EditAccountModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.contacts,
                      color: Theme.of(context).accentColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Accounts",
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text("Add New Account"),
                  elevation: 0,
                  onPressed: () {
                    _showAddEditModal(context);
                  },
                ),
              ],
            ),
            AccountsTable(),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
