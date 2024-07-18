/*
 * File: base_exception.dart
 * File Created: Friday, 26th August 2022 10:18:38 pm
 * Author: Hieu Tran
 * -----
 * Last Modified: Friday, 26th August 2022 10:20:52 pm
 * Modified By: Hieu Tran
 */

abstract class BaseException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  BaseException({
    this.message = '',
    this.stackTrace,
  });

  @override
  String toString() {
    return '$message';
  }
}
