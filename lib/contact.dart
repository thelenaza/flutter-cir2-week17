import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
      ),
      body: const Center(
        child: Icon(Icons.contact_phone,size: 150,color: Colors.orangeAccent),
      ),
    );
  }
}
