```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Assuming jsonData is a list of maps
      final dataList = jsonData.cast<Map<String, dynamic>>();

      // Error handling for a specific key that might be missing
      for (final item in dataList) {
        final value = item['missingKey']; //This line might throw an error
        //Use value
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the exception appropriately
  }
}
```