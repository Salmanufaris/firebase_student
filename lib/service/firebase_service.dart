import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_todo/model/student_model.dart';

class DonorService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late final CollectionReference<DonorModel> donorRef;

  DonorService() {
    donorRef = firestore.collection('Task').withConverter(
          fromFirestore: (snapshot, options) =>
              DonorModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
  }
}
