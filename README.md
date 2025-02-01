# Unhandled FormatException in Dart JSON Decoding

This repository demonstrates a common error in Dart when handling JSON responses: failing to catch a `FormatException` that can occur if the JSON decoding fails.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

## Problem

The original code doesn't handle the potential `FormatException` that can arise from `jsonDecode` if the server returns invalid JSON. This can lead to crashes or unexpected behavior.

## Solution

The solution involves wrapping `jsonDecode` in a `try-catch` block specifically to catch `FormatException`. This allows for graceful error handling and prevents application crashes.