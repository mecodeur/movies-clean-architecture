import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = "https://api.themoviedb.org/3";
  final apiKey = "?api_key=4d1044c950ee135ad26722c4bc2c90de";

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint$apiKey');
    return response.data;
  }
}
