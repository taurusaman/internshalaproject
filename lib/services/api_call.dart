import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:internshalaproject/model/internship_response_model.dart'; //Or Dio Package we can use

class ApiCall {
  static fetchResponse() async {
    var response = await http
        .get(Uri.parse('https://internshala.com/flutter_hiring/search'));
    debugPrint("Response is: $response");
    debugPrint("Response is: ${response.body}");

    if (response.statusCode == 200 && response != null) {
      Map<String, dynamic> dataObject = jsonDecode(response.body);

      debugPrint("Response is: $dataObject");
      InternshipResponseModel internshipResponseModel =
          InternshipResponseModel.fromJson(dataObject);


      debugPrint(
          " Model response data is: ${internshipResponseModel}");
      // debugPrint(
      //     " Model response data is: ${internshipResponseModel.internshipsMeta[5]}");
      // debugPrint(
      //     " Model       debugPrint(" Model response data is: ${internshipResponseModel}");response data is: ${internshipResponseModel.internshipsMeta.length}");
      // debugPrint(
      //     " Mode response data is: ${internshipResponseModel.internshipsMeta["65454"]!.companyName}");

      return internshipResponseModel;
    } else {
      debugPrint("Api Call failed");
    }
  }
}
