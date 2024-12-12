```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200 && response.headers['content-type']!.contains('application/json')) {
      try {
        final data = jsonDecode(response.body);
        // ... process data ...
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle JSON decoding error appropriately
      }
    } else {
      // Handle non-200 status codes and non-JSON responses
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle exceptions during fetching or processing
  }
}
```