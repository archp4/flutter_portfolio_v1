import 'dart:convert';

import 'package:dio/dio.dart';

class Spend {
  final String id;
  final String createdAt;
  final String updateAt;
  final String receiver;
  final String amount;
  final String status;
  final String restId;

  Spend(
    this.id,
    this.createdAt,
    this.updateAt,
    this.receiver,
    this.amount,
    this.status,
    this.restId,
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt,
      'updated_at': updateAt,
      'receiver': receiver,
      'amount': amount,
      'status': status,
      'rest_id': restId,
    };
  }

  factory Spend.fromMap(Map<String, dynamic> map) {
    return Spend(
      map['id'] ?? '',
      map['created_at'] ?? '',
      map['updated_at'] ?? '',
      map['receiver'] ?? '',
      map['amount'] ?? '',
      map['status'] ?? '',
      map['rest_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Spend.fromJson(String source) => Spend.fromMap(
        json.decode(source),
      );
  static Future getData() async {
    Response response = await dio.get(
      "http://beta.mitrafintech.in/api/mitrape/spent.php?mobile=7774933880",
    );
    return response.data;
  }
}

class Received {
  final String id;
  final String createdAt;
  final String updateAt;
  final String sender;
  final String amount;
  final String status;
  final String restId;

  Received({
    required this.id,
    required this.createdAt,
    required this.updateAt,
    required this.sender,
    required this.amount,
    required this.status,
    required this.restId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt,
      'updated_at': updateAt,
      'sender': sender,
      'amount': amount,
      'status': status,
      'rest_id': restId,
    };
  }

  factory Received.fromMap(Map<String, dynamic> map) {
    return Received(
      id: map['id'] ?? '',
      createdAt: map['created_at'] ?? '',
      updateAt: map['updated_at'] ?? '',
      sender: map['sender'] ?? '',
      amount: map['amount'] ?? '',
      status: map['status'] ?? '',
      restId: map['rest_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Received.fromJson(String source) =>
      Received.fromMap(json.decode(source));

  static Future getData() async {
    Response response = await dio.get(
      "http://beta.mitrafintech.in/api/mitrape/received.php?mobile=7774933880",
    );
    return response.data;
  }
}

Dio dio = Dio();
