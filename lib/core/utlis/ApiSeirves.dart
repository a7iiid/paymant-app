import 'package:dio/dio.dart';

class ApiSeirves {
  Dio dio = new Dio();
  Future<Response> post(
      {required url,
      required body,
      required String token,
      String? countantType}) async {
    try {
      Response response = await dio.post(
        url,
        data: body,
        options: Options(
          contentType: countantType,
          headers: {'Authorization': "Bearer $token"},
        ),
      );
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }
}
