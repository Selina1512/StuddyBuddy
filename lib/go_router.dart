// ignore_for_file: require_trailing_commas

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/UI/createdeadline/create_deadline_view.dart';
import 'package:studybuddy/UI/deadline/deadline_view.dart';
import 'package:studybuddy/UI/deadline_week/deadlines_week_view.dart';
import 'package:studybuddy/navigation_service/navigation_routes.dart';

import 'UI/Deadline_details/deadline_detail_view.dart';

part 'go_router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GoRouter goRouter(final GoRouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      routes: <RouteBase>[
        GoRoute(
          path: Navigationroutes.root,
          builder: (final BuildContext context, final __)
          => const DeadlineView(),
        ),
        GoRoute(
            path: Navigationroutes.deadlineWeek,
            builder: (final BuildContext context, final __)
            => const DeadlinesWeekView(),
        ),
        GoRoute(
            path: Navigationroutes.createDeadline,
            builder: (final BuildContext context, final __) => CreateDeadline(),
        ),
        GoRoute(
            path: '/deadlinedetails/:id',
            pageBuilder: (context, state) {
              // Extract the ID from the path
              final id = state.pathParameters['id']?? 'defaultId';
              // Use the ID to create the DeadlineDetailView
              return MaterialPage(child: DeadlineDetailView(id: id));
            }),
      ],
);
