import 'package:logger/logger.dart';

// Summary of Logger Methods:
// logger.i() - Informational log.
// logger.d() - Debug log.
// logger.w() - Warning log.
// logger.e() - Error log (supports optional exception and stack trace).
// logger.v() - Verbose log (detailed information).
// logger.wtf() - Critical error log.

void main() {
  var logger = Logger();

  // Info log
  logger.i("App started successfully.");

  // Debug log
  var x = 10;
  logger.d("Debugging variable: x = $x");

  // Warning log
  logger.w("API response took longer than expected.");

  // Error log
  try {
    throw Exception("Sample error");
  } catch (e, stackTrace) {
    logger.e("Caught an error", e, stackTrace);
  }

  // Verbose log
  logger.v("This is a detailed log for tracking an issue.");

  // WTF log
  logger.wtf("Critical failure in system initialization!");
}
