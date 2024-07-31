import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:studybuddy/database/task/tasks_model.dart';
import 'package:studybuddy/database/task_details/task_details_model.dart';
import 'package:studybuddy/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive
    ..registerAdapter(TaskDetailsModelAdapter())
    ..registerAdapter(TasksModelAdapter());

  await Hive.openBox<TaskDetailsModel>('taskDetails');
  await Hive.openBox<TasksModel>('tasksneu');

  await EasyLocalization.ensureInitialized();
  final ProviderContainer providerContainer = ProviderContainer();

  runApp(
      await buildApp(providerContainer: providerContainer)
  );
}

/// Builds the app.
Future<Widget> buildApp({
  required final ProviderContainer providerContainer,
}) async {
  return UncontrolledProviderScope(
    container: providerContainer,
    child: Consumer(
      builder: (final _, final WidgetRef ref, final __) => EasyLocalization(
        supportedLocales: const <Locale>[Locale('en'), Locale('de')],
        fallbackLocale: const Locale('en'),
        path: 'assets/translations',
        child: Builder(
          builder: (final BuildContext context) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: ref.watch(goRouterProvider),
          ),
        ),
      ),
    ),
  );
}
