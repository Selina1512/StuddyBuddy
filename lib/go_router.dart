import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:studybuddy/deadline/deadline_view.dart';
import 'package:studybuddy/deadline_week/deadlines_week_view.dart';
import 'package:studybuddy/navigation_service/NavigationRoutes.dart';
import 'package:studybuddy/task_details/deadline_detail_view.dart';

import 'createdeadline/create_deadline_view.dart';

part 'go_router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GoRouter goRouter(final GoRouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      routes: <RouteBase>[
        GoRoute(
          path: Navigationroutes.root,
          builder: (final BuildContext context, final __) => const DeadlineView(),
        ),
        GoRoute(
            path: Navigationroutes.deadlineWeek,
            builder: (final BuildContext context, final __) => const DeadlinesWeekView(),
        ),
        GoRoute(
            path: Navigationroutes.createDeadline,
            builder: (final BuildContext context, final __) => CreateDeadline(),
        ),
        GoRoute(
            path: Navigationroutes.deadlineDetails,
            builder: (final BuildContext context, final __) => const DeadlineDetailView(),
        ),
      ],
);
