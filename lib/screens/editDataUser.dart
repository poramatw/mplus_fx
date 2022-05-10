import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountScreen.dart';

import '../theme/theme.dart';

class EditDataUser extends StatefulWidget {
  const EditDataUser({Key? key}) : super(key: key);

  @override
  State<EditDataUser> createState() => _EditDataUserState();
}

class _EditDataUserState extends State<EditDataUser> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Profile information",
                      style: TextStyle(fontSize: 35)),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Fullname'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Email'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const Text("Date Of Birth",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'dd/mm/ yyyy'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const Text("Gender",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  TextFormField(),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Address'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'City'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'State/Province'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'ZIP code'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Your Country'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Nationality'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Phone #'),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Center(
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: amberC,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AccountContact();
                          }));
                        },
                        child: SizedBox(
                          height: 50,
                          width: 60,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
