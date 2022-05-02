import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountScreen.dart';

import '../theme/theme.dart';

class editDataUser extends StatefulWidget {
  const editDataUser({Key? key}) : super(key: key);

  @override
  State<editDataUser> createState() => _editDataUserState();
}

class _editDataUserState extends State<editDataUser> {
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
                  SizedBox(
                    height: 20,
                  ),
                  Text("Profile information", style: TextStyle(fontSize: 35)),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Fullname'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Email'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text("Date Of Birth",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'dd/mm/ yyyy'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text("Gender",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  TextFormField(),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Address'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'City'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'State/Province'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'ZIP code'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Your Country'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Nationality'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Phone #'),
                    style: TextStyle(fontSize: 15, color: Colors.grey),
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
                            return AccountContact();
                          }));
                        },
                        child: SizedBox(
                          height: 50,
                          width: 60,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
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
