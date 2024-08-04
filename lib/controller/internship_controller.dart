
import 'package:get/get.dart';
import 'package:internshalaproject/model/internship_response_model.dart';
import 'package:internshalaproject/services/api_call.dart';

class InternshipController extends GetxController {
  late InternshipResponseModel internshipResponseModel;
  List<int>? internshipIdList;
  bool isLoading = true;

  callApiFromProvider() async {
    print("Reached Here");
    internshipResponseModel = await ApiCall.fetchResponse();
    internshipIdList = internshipResponseModel.internshipIds;
    isLoading = false;
  }
}
