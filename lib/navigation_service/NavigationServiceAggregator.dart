import 'package:studybuddy/createdeadline/services/create_deadline_navigation.dart';
import 'package:studybuddy/deadline/services/deadline_navigation.dart';

import 'general_navigation_service.dart';

abstract interface class NavigationServiceAggregator
  implements
  GeneralNavigationService,
    DeadlineNavigationService,
    CreateDeadlineNavigationService {}
