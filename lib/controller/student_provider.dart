import 'package:flutter/foundation.dart';
import 'package:flutter_application_todo/model/student_model.dart';
import 'package:flutter_application_todo/service/firebase_service.dart';

class DonorProvider extends ChangeNotifier {
  DonorService donorService = DonorService();
  getData() {
    return donorService.donorRef.snapshots();
  }

  addDonor(DonorModel data) async {
    await donorService.donorRef.add(data);
    notifyListeners();
  }

  updateDonor(id, DonorModel data) {
    donorService.donorRef.doc(id).update(data.toJson());
    notifyListeners();
  }

  deleteDonor(id) {
    donorService.donorRef.doc(id).delete();
    notifyListeners();
  }
}
