// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:portfilo/test.dart';

class DisplayData extends StatefulWidget {
  const DisplayData({Key? key}) : super(key: key);

  @override
  State<DisplayData> createState() => _DisplayDataState();
}

class _DisplayDataState extends State<DisplayData> {
  var dataRevice;
  var dataSpend;
  @override
  void initState() {
    super.initState();
  }

  Future<bool> getData() async {
    var temp = await Received.getData();
    dataRevice = jsonDecode(temp);
    if (dataRevice['status'] == 'success') {
      await getSpendData();

      return true;
    } else {
      throw Exception('Failed to load Data');
    }
  }

  Future<bool> getSpendData() async {
    var temp = await Spend.getData();
    dataSpend = jsonDecode(temp);
    if (dataSpend['status'] == 'success') {
      return true;
    } else {
      throw Exception('Failed to load Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<bool>(
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: dataRevice['list'],
                  itemBuilder: (context, index) {
                    Received received = Received.fromMap(
                      dataRevice['$index'],
                    );
                    return ListTile(
                      title: Text(received.sender),
                    );
                  },
                ),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: dataSpend['list'],
                  itemBuilder: (context, index) {
                    Spend spend = Spend.fromMap(dataSpend["$index"]);
                    return ListTile(
                      title: Text(spend.receiver),
                    );
                  },
                ),
              ],
            );
          } else if (snapshot.hasData) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        future: getData(),
      ),
    );
  }
}
