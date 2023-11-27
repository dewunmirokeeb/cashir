import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cashir/models/user.dart';
import 'package:cashir/services/api_data_model.dart';

import 'package:http/http.dart' as http;

class ApiService {
  Future<ApiDataModel> getData() async {
    try {
      http.Response? response;
      response = await http.post(
        Uri.parse(
            "https://1c8c53e2-0aec-46fe-987f-9dae3b564b23.mock.pstmn.io/test/dev"),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        UserModel returnedData = UserModel.fromjson(data: data);
        return ApiDataModel(
          isSuccessful: true,
          message: "success",
          model: returnedData,
        );
      } else {
        return ApiDataModel(
          isSuccessful: false,
          message: data["message"],
        );
      }
    } catch (e) {
      if (e is SocketException) {
        return ApiDataModel(
          isSuccessful: false,
          message: "no internet",
        );
      } else if (e is TimeoutException) {
        return ApiDataModel(
          isSuccessful: false,
          message: "service time out",
        );
      } else {
        return ApiDataModel(
          isSuccessful: false,
          message: e.toString(),
        );
      }
    }
  }
}
