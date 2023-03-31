import 'dart:io';

import 'package:conduit/conduit.dart';
import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:dart_application_1/dart_application_1.dart';

void main(List<String> arguments) async {

  final port = int.parse(Platform.environment["PORT"] ?? '8888');

  final service = Application<AppService>()..options.port = port;

  await service.start(numberOfInstances: 3,consoleLogging: true);
}
