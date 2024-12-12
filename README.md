# Unhandled JSON Decoding Error in Dart HTTP Request

This repository demonstrates a common error in Dart when handling HTTP requests: assuming the API response is always valid JSON without proper error handling.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

## Problem

The original code lacks checks for the response content type and potential exceptions during JSON decoding.  If the API returns an error or a non-JSON response, the app crashes.

## Solution

The solution includes:

1. **Checking the content type:** Verifying that the response is actually JSON before decoding.
2. **Handling JSON decoding errors:** Using `try-catch` to gracefully handle exceptions during `jsonDecode`. 
3. **Handling non-200 status codes:** Explicit error handling for various HTTP status codes.

This improved error handling makes the code more robust and prevents unexpected crashes.