import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Leave extends StatefulWidget {
  static String id = 'leave';
  @override
  State<Leave> createState() => _LeaveState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async{
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const serviceId = "service_kv5xr5e";
  const templateId = "template_w7jpjtn";
  const userId = "user_GFGNiTot1Pql_XAeM";

  final response  = await http.post(
      url,
    headers : {'Content-Type':'application/json'},
    body: json.encode({
      "service_id":serviceId,
      "templateId":templateId,
      "user_id":userId,
      "template_params":{
        "user_name":nameController.text,
        "user_subject":subjectController.text,
        "message":messageController.text,
        "user_email":emailController.text,
      }
    })
  );
}

class _LeaveState extends State<Leave> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Leave Application'),
          backgroundColor: Color(0xFF6F35A5),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.account_circle),
                    hintText: 'Name',
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: subjectController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.subject_rounded),
                    hintText: 'Subject',
                    labelText: 'Subject',
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.email),
                    hintText: 'Email',
                    labelText: 'Email'
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(
                      icon: const Icon(Icons.message),
                      hintText: 'Message',
                      labelText: 'Message'
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: (){
                      sendEmail();
                    },
                    child: Text(
                      "Send",
                      style: TextStyle(fontSize: 20),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
