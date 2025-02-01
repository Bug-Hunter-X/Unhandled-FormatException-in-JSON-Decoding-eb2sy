```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final data = jsonDecode(response.body);
      // Use the data
      print(data);
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during the network request
    print('Error: $e');
    // Consider rethrowing to handle errors in the calling function
    rethrow;
  }
}
```