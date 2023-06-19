import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:text_field_and_gesture/home_page.dart';

class MytextField extends StatefulWidget {
  static const String id = "text_field";

  const MytextField({Key? key}) : super(key: key);

  @override
  State<MytextField> createState() => _MytextFieldState();
}

class _MytextFieldState extends State<MytextField> {
  String email = "";
  String password = "";
  String outputPassword = "";
  String outputEmail = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
      ),
      body: ListView(
       children: [
         Container(
           padding: const EdgeInsets.all(20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                 child: TextField(
                   onChanged: (value) {
                     setState(() {
                       email = value;
                     });
                   },
                   decoration: const InputDecoration(
                     prefixIcon: Icon(
                       Icons.email,
                       size: 30,
                       color: Colors.blue,
                     ),
                     hintText: "Enter your Email",
                     border: OutlineInputBorder(),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                 child: TextField(
                   onChanged: (numbers) {
                     setState(() {
                       password = numbers;
                     });
                   },
                   decoration: const InputDecoration(
                     prefixIcon: Icon(
                       Icons.password,
                       size: 30,
                       color: Colors.blue,
                     ),
                     hintText: "Enter your password",
                     border: UnderlineInputBorder(),
                   ),
                 ),
               ),
               Container(
                 margin: const EdgeInsets.only(left: 36),
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.blueAccent,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Center(
                   child: Text(
                     email,
                     style: const TextStyle(color: Colors.white),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 18,
               ),
               Container(
                 margin: const EdgeInsets.only(left: 36),
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.purple,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Center(
                   child: Text(
                     password,
                     style: const TextStyle(color: Colors.white),
                   ),
                 ),
               ),
               ElevatedButton(
                 onPressed: () {
                   Navigator.pushReplacementNamed(context, HomePage.id);
                   setState(() {
                     outputEmail = email;
                     outputPassword = password;
                   });
                 },
                 child: const Text("Next"),
               ),
               Container(
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Center(
                   child: Text(
                     outputEmail,
                     style: const TextStyle(color: Colors.white),
                   ),
                 ),
               ),
               const SizedBox(height: 10,),
               Container(
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.deepOrange,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: Center(
                   child: Text(
                     outputPassword,
                     style: const TextStyle(color: Colors.white),
                   ),
                 ),
               )
             ],
           ),
         ),
       ],
      ),

    );
  }
}
