import 'package:studybuddy/UI/createdeadline/services/create_deadline_navigation.dart';
import 'package:studybuddy/UI/deadline/services/deadline_navigation.dart';
import 'package:studybuddy/navigation_service/general_navigation_service.dart';

abstract interface class NavigationServiceAggregator
  implements
  GeneralNavigationService,
    DeadlineNavigationService,
    CreateDeadlineNavigationService {}
