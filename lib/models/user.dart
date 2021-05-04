import 'package:helloworld/models/doctors.dart';
import 'medicalreport.dart';

class User {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String dob;
  final String city;
  final String state;
  final String country;
  final List<MedicalReport> pictures;

  User({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.dob,
    this.city,
    this.state,
    this.country,
    this.pictures,
  });

  List<User> getUSers() {
    return [
      User(
        name: 'user1',
        email: 'user1email@gmail.com',
        password: 'user123',
        phone: '0000000000',
        dob: '1-4-1995',
        city: 'user1city',
        state: 'user1state',
        country: 'user1country',
        pictures: [
          MedicalReport(
            bloodgroup: 'A+',
            healthstatus: 'Healthy',
            doctors: [
              Doctors(
                doctorname: 'doctor1',
                email: 'doctor1email@gmail.com',
              )
            ],
          ),
        ],
      ),
      User(
        name: 'user2',
        email: 'user2email@gmail.com',
        password: 'user234',
        phone: '0000000000',
        dob: '3-5-1989',
        city: 'user2city',
        state: 'user2state',
        country: 'user2state',
        pictures: [
          MedicalReport(
            bloodgroup: 'B-',
            healthstatus: 'Healthy',
          ),
        ],
      ),
    ];
  }
}
