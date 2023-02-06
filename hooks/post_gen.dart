import 'package:mason/mason.dart';
import 'dart:io';

void run(HookContext context) async {

  context.logger.progress('Running flutter pub get');
  final pubGetResult = await Process.run(
    'flutter',
    [
      'pub',
      'get',
    ],
    runInShell: true,
    workingDirectory: '${Directory.current.path}/${context.vars['project_name']}',
  );
  if (pubGetResult.exitCode != 0) {
    context.logger.err('flutter pub get failed');
    exit(pubGetResult.exitCode);
  }

  context.logger.progress('Running flutter format');;
  final flutterFormatResult = await Process.run(
    'flutter',
    [
      'format',
      '.',
    ],
    runInShell: true,
  );
  if (flutterFormatResult.exitCode != 0) {
    context.logger.err('flutter format failed');
    exit(flutterFormatResult.exitCode);
  }

  context.logger.progress('Running flutter create macos');;
  final flutterCreateMacosResult = await Process.run(
    'flutter',
    [
      'create',
      context.vars['project_name'],
      '--platform',
      'macos',
    ],
    runInShell: true,
  );
  if (flutterCreateMacosResult.exitCode != 0) {
    context.logger.err('flutter create macos failed');
    exit(flutterCreateMacosResult.exitCode);
  }

  context.logger
      .success('\nSuccessfully generated ${context.vars['project_name']}!');

  exit(0);
}
