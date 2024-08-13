import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:random_users_app/themes/app_themes.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.appColor ,
        title: Text("RANDOM USERS", style: AppThemes().appStyle(18, AppThemes.blanc, isBold: true ),),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user["email"];
        return ListTile(
          title: Text(email),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers () async {
    print ("appel de fetchUsers effecté");
    const String apiUrl = "https://randomuser.me/api/?results=20";
    final uri = Uri.parse(apiUrl); 
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print("fetchUsers completed");
  }
}