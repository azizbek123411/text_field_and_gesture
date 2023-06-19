import 'package:flutter/material.dart';

import 'mytext_field_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String _phoneNumber = "";
  String _email = "";
  String _password = "";

  _doSigIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Azizbek");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) =>
                    value!.contains("@") ? null : "Email shakli noto'g'ri",
                onSaved: (value) => _email = value!,
                decoration: const InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) => value!.contains("+")
                    ? null
                    : "Telefon raqamingizni to'g'ri kiriting",
                onSaved: (value) => _phoneNumber = value!,
                decoration:
                    const InputDecoration(labelText: "Telefon Raqamingiz"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) =>
                    value!.length > 6 ? null : "ko'proq belgi kiriting",
                onSaved: (value) => _password = value!,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _doSigIn();
              },
              child: const Text("Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
