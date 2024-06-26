import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive_flutter/adapters.dart';

import 'database/boxTask.dart';
import 'database/task_details.dart';
import 'database/tasks.dart';
import 'go_router.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TasksAdapter());
  Hive.registerAdapter(TaskDetailsAdapter());
  boxTask = await Hive.openBox<Tasks>('taskBox');
  await Hive.openBox<TaskDetails>('taskDetails');

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final ProviderContainer providerContainer = ProviderContainer();

  runApp(
      await buildApp(providerContainer: providerContainer)
  );
}
/*runApp(
await buildApp(providerContainer: providerContainer)
);*/
//await Hive.openBox<TaskDetails>('taskDetails');
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


