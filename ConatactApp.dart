import 'package:flutter/material.dart';

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  ContactListScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  // List Banailam and List er Value  5ta Map
  final List<Map<String, String>> contacts = [
    {'name': 'Jawad', 'number': '01877-777777'},
    {'name': 'Ferdous', 'number': '01673-777777'},
    {'name': 'Hasan', 'number': '01745-777777'},
    {'name': 'Hasan', 'number': '01745-777777'},
    {'name': 'Hasan', 'number': '01745-777777'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List' ,
            style: TextStyle(color: Colors.white) ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Input er field Name Input
            TextFormField(
              controller: nameController,
              cursorColor: Colors.black,
              decoration:  InputDecoration(
                hintText: 'Enter Name',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.black26
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black26)
                ),
              ),

            ),
            const SizedBox(height: 10),

            // Input er field  Number Input
            TextFormField(
              controller: numberController,
              cursorColor: Colors.black,
              decoration:  InputDecoration(
                hintText: 'Enter Number',
                border: OutlineInputBorder(),

                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.black26
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black26
                    )
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),

            // eikhane button create korlam Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text('Add' ,
                    style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // eikhane list rakhlam Contact List
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    elevation: 1,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(

                      leading: const Icon(Icons.person, size: 35, color: Colors.black),
                      title: Text(
                        contacts[index]['name']!,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(contacts[index]['number']!),
                      trailing: const Icon(Icons.call, color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
