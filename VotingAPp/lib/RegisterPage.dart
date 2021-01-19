import 'dart:io';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:image_picker/image_picker.dart';
// import 'imagepicker.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  double age = 0;

  int selectedRadio;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  File _image;

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 100);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      _showPicker(context);
                    },
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.green,
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                _image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              // width: 100,
                              // height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // border: InputBorder.none,
                      hintText: 'Username',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Confirm Password'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Age'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                setSelectedRadio(val);
                              }),
                          Text('Male'),
                          Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                setSelectedRadio(val);
                              }),
                          Text('Female'),
                          Radio(
                              value: 3,
                              groupValue: selectedRadio,
                              onChanged: (val) {
                                setSelectedRadio(val);
                              }),
                          Text('Others')
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: RaisedButton(
                        color: Colors.blueAccent,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already an user? ',
                      style: TextStyle(fontSize: 16),
                    ),
                    InkWell(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
