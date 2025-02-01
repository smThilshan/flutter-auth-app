import 'package:dio/dio.dart';

class AuthService {
  final Dio dio = Dio();
  final String baseUrl =
      "http://localhost:3000/api"; // ✅ Replace with your actual server IP

  Future<void> registerUser() async {
    try {
      Response response = await dio.post(
        '$baseUrl/register',
        data: {
          "username": "testUser",
          "email": "test@example.com",
          "password": "password123"
        },
        options: Options(
          headers: {
            "Content-Type": "application/json", // ✅ Ensure correct headers
          },
        ),
      );

      print("Response: ${response.data}");
    } catch (e) {
      print("Error: $e");
    }
  }
}
