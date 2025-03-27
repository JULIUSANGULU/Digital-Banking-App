import 'package:flutter/material.dart';
import 'dart:convert';

class ErrorHandler {
  static void showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static String handleApiError(dynamic response) {
    try {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return data['message'] ?? 'An unexpected error occurred';
    } catch (e) {
      return 'An error occurred. Please try again.';
    }
  }

  static String handleNetworkError(dynamic error) {
    if (error.toString().contains('SocketException')) {
      return 'No internet connection. Please check your network.';
    }
    return 'Something went wrong. Try again later.';
  }
}
