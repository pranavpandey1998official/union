import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uniun/common/constants.dart';
import 'package:uniun/utils/file_output.dart';

abstract class LogUtil {
  static LogPrinter get logPrinter => kReleaseMode
      ? SimplePrinter(colors: false)
      : PrettyPrinter(
          methodCount: 0,
          colors: false,
        );

  static LogOutput logOutput(File outputFile) => MultiOutput(
        <LogOutput>[
          ConsoleOutput(),
          CustomFileOutput(
            file: outputFile,
            overrideExisting: true,
          ),
        ],
      );

  static Future<File> initLogFile() async {
    final Directory tempDir = await getTemporaryDirectory();
    final File logFile = File('${tempDir.path}/${Constants.logFilename}');
    if (logFile.existsSync()) {
      await logFile.rename('${tempDir.path}/${Constants.previousLogFileName}');
    }
    return logFile;
  }

  static Future<File> exportLog() async {
    final Directory tempDir = await getTemporaryDirectory();
    final String logPath = '${tempDir.path}/${Constants.logFilename}';
    final String previousLogPath =
        '${tempDir.path}/${Constants.previousLogFileName}';
    final File currentSessionLog = File(logPath);
    final File previousSessionLog = File(previousLogPath);

    final Uint8List fileContent = await currentSessionLog.readAsBytes();
    await previousSessionLog.writeAsString(
      'Current session logs:\n',
      mode: FileMode.append,
    );
    return previousSessionLog.writeAsBytes(
      fileContent,
      mode: FileMode.append,
    );
  }
}
