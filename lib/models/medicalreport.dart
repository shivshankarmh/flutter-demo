import 'package:helloworld/models/medicalreport.dart';

import 'doctors.dart';

class MedicalReport {
  final String bloodgroup;
  final String healthstatus;
  List<Doctors> doctors;

  MedicalReport({this.bloodgroup, this.healthstatus, this.doctors});
}
