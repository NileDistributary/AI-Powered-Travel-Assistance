import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ChatService {
  final String baseUrl = 'http://10.0.2.2:5000'; // IP local for android emulator
  String? _sessionId;

  Future<void> _initSession() async {
    if (_sessionId != null) return;
    final prefs = await SharedPreferences.getInstance();
    _sessionId = prefs.getString('session_id');

    if (_sessionId == null) {
        _sessionId = DateTime.now().millisecondsSinceEpoch.toString();
        await prefs.setString('session_id', _sessionId!);
    }  
  }


  Future<String> sendMessage(String message) async {
    await _initSession();

    final response = await http.post(
        Uri.parse('$baseUrl/chat'),
        headers: {'Content-Type': 'application/json',},
        body: jsonEncode({
            'message': message,
            'session_id': _sessionId,
        }),
        );
    if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['message'];
    } else {
        throw Exception('Failed to get response from the assistant');
    }
  }
   
}



