import 'package:flutter/material.dart';
import 'package:flutter_application_todo/controller/student_provider.dart';
import 'package:flutter_application_todo/controller/widget_provider.dart';
import 'package:flutter_application_todo/model/student_model.dart';

class AddEditProvider extends ChangeNotifier {
  TextEditingController nameCntlr = TextEditingController();
  TextEditingController ageCntlr = TextEditingController();
  TextEditingController phoneCntlr = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final WidgetsProvider _widgetsProvider = WidgetsProvider();
  final DonorProvider _donorProvider = DonorProvider();
  bool isEdit = false;

  addDonor(context) {
    final data = DonorModel(
        age: int.parse(ageCntlr.text),
        group: _widgetsProvider.selectedItem,
        name: nameCntlr.text,
        phone: int.parse(phoneCntlr.text));

    _donorProvider.addDonor(data);
    clearTextFields();
    notifyListeners();
  }

  updateDonor(id) {
    final data = DonorModel(
        age: int.parse(ageCntlr.text),
        group: _widgetsProvider.selectedItem,
        name: nameCntlr.text,
        phone: int.parse(phoneCntlr.text));
    _donorProvider.updateDonor(id, data);
    clearTextFields();
    notifyListeners();
  }

  clearTextFields() {
    nameCntlr.clear();
    ageCntlr.clear();
    phoneCntlr.clear();
    _widgetsProvider.selectedItem = null;
    notifyListeners();
  }

  loadDatasToEdit(name, phone, age, group) {
    nameCntlr = TextEditingController(text: name);
    phoneCntlr = TextEditingController(text: phone?.toString() ?? '');
    ageCntlr = TextEditingController(text: age?.toString() ?? '');
    _widgetsProvider.selectedItem = group;
  }
}
