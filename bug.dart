```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrect: Assuming JSON response without checking
      final data = jsonDecode(response.body);
      // ... process data ...
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during fetching or processing
    print('Error: $e');
  }
}
```