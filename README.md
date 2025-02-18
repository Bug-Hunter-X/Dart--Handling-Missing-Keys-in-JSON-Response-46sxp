# Dart: Handling Missing Keys in JSON Response

This repository demonstrates a common error in Dart when handling JSON responses: accessing a key that might be missing from a map.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

The core issue is accessing a key in a JSON response without checking if it exists. If the key is absent, a runtime exception occurs, crashing your application.

The solution involves robust error handling: either explicitly checking for the key's presence or using the `?.` operator for null-safe access.