import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Validasi extends StatefulWidget {
  @override
  _ValidasiState createState() => _ValidasiState();
}

class _ValidasiState extends State<Validasi> {
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerKet = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(children: <Widget>[
          new Text("Nama Lengkap: ${controllerNama.text}"),
          new Text("Password: ${controllerPass.text}"),
          new Text("Keterangan: ${controllerKet.text}"),
          new RaisedButton(
            child: new Text("OK"),
            onPressed: () => Navigator.pop(context),
          )
        ]),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // TextField(),
                    TextFormField(
                      controller: controllerNama,
                      decoration: new InputDecoration(
                        labelText: "Nama Lengkap",
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    TextFormField(
                      controller: controllerPass,
                      obscureText: true,
                      decoration: new InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    TextFormField(
                      controller: controllerKet,
                      maxLines: 6,
                      decoration: new InputDecoration(
                        labelText: "Keterangan",
                        prefixIcon: Icon(Icons.message),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Keterangan tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    Center(
                      child: _image == null
                          ? Text('No image selected.')
                          : Image.file(_image),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    FloatingActionButton(
                      onPressed: getImage,
                      tooltip: 'Pick Image',
                      child: Icon(Icons.add_a_photo),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(top: 20.0),
                    ),
                    Container(
                      height: 50.0,
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState.validate()) {
                            kirimdata();
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF2196F3),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "SEND",
                                  style: TextStyle(
                                    color: Color(0xFFE3F2FD),
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
