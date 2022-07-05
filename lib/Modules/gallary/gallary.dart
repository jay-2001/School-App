import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'storage_service.dart';
class Gallary extends StatefulWidget {
  static String id = 'gallary';
  @override
  State<Gallary> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Gallary> {
  final Storage storage = Storage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallary'),
      ),
      body: Column(
        children:<Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () async{
                final results = await FilePicker.platform.pickFiles(
                  allowMultiple: false,
                  type: FileType.custom,
                  allowedExtensions: ['png','jpg'],
                );

                if(results == null){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No File Selected'),),
                  );
                  return null;
                }

                final path = results.files.single.path;
                final fileName = results.files.single.name;

                storage.uploadFile(path, fileName).then((value) => print('Done'));
              },
              child: Text('Upload File'),
            ),
          ),
          FutureBuilder(
          future: storage.downloadURL('image1.jpg'), // a previously-obtained Future<String> or null
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
              return Container(
                width: 300,
                height: 250,
                child: Image.network(
                  snapshot.data,
                  fit:BoxFit.cover,
                ),
              );
            }
            if(snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData){
              return CircularProgressIndicator();
            }
            return Container();
          }
          ),
          FutureBuilder(
              future: storage.downloadURL('image2.jpg'), // a previously-obtained Future<String> or null
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
                  return Container(
                    width: 300,
                    height: 250,
                    child: Image.network(
                      snapshot.data,
                      fit:BoxFit.cover,
                    ),
                  );
                }
                if(snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData){
                  return CircularProgressIndicator();
                }
                return Container();
              }
          ),
        ],
      ),
    );
  }
}
