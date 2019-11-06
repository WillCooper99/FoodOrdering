import 'package:cloud_firestore/cloud_firestore.dart';
class User
{
  String uid;
  String email;
  String fname;
  String surname;
  bool employee;
  User(String this.uid){
  var document = Firestore.instance.collection('users').document(uid);
  document.get().then((DocumentSnapshot ds) {
    this.email = ds['email'];
    this.employee = ds['employee'];
    this.fname = ds['fname'];
    this.surname = ds['surname'];
  });
  }


  String getFName(){
    return this.fname;
  }
  String getSurName(){
    return this.surname;
  }
  bool getEmployee(){
    return this.employee;
  }

}