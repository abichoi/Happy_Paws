import 'package:flutter/material.dart';
import 'dropdownsex.dart';
import 'datepicker.dart';

class AddProfileFormWidget extends StatefulWidget {
  const AddProfileFormWidget({Key? key}) : super(key: key);

  @override
  State<AddProfileFormWidget> createState() => AddProfileFormWidgetState();
}


class AddProfileFormWidgetState extends State<AddProfileFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter the Name',
                labelText: 'Name',
                labelStyle:TextStyle(fontSize: 18),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the name';
              }
              return null;
            },
          ),


                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter the species',
                    labelText: 'Species',
                    labelStyle:TextStyle(fontSize: 18),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the phone number';
                    }
                    return null;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0,10,0,5),
                  child: Text('Sex', style: TextStyle(fontSize:18, color: Colors.black54)),
                ),
                Container(
                  height: 40.0,
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF2F3F5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12)
                  ),
                  child: const SexDropDownWidget(),
                ),

          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter the breed',
                labelText: 'Breed',
                labelStyle:TextStyle(fontSize: 18),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the address';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter the color',
                labelText: 'Color',
                labelStyle:TextStyle(fontSize: 18),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the email';
              }
              return null;
            },
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0,10,0,5),
            child: Text('Date of Birth', style: TextStyle(fontSize:18, color: Colors.black54)),
          ),
          Container(height: 50, child: DatePicker(),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class AddProfilePage extends StatelessWidget{
  const AddProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Add Pet Profile"),
          elevation: 0,
          flexibleSpace: Container(
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF4F60FF), Color(0xFF24DEEA)],
              ),
            ),
          )
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: AddProfileFormWidget(),
      ),
    );
  }
}