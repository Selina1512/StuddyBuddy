// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deadline_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deadlineDetailsDefaultControllerHash() =>
    r'bc652c6f317a36dfee1316adde91e7ae4eeed2ce';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DeadlineDetailsDefaultController
    extends BuildlessAutoDisposeNotifier<TaskDetailsMode> {
  late final DeadlineNavigationService navigationService;

  TaskDetailsMode build({
    required DeadlineNavigationService navigationService,
  });
}

/// See also [DeadlineDetailsDefaultController].
@ProviderFor(DeadlineDetailsDefaultController)
const deadlineDetailsDefaultControllerProvider =
    DeadlineDetailsDefaultControllerFamily();

/// See also [DeadlineDetailsDefaultController].
class DeadlineDetailsDefaultControllerFamily extends Family<TaskDetailsMode> {
  /// See also [DeadlineDetailsDefaultController].
  const DeadlineDetailsDefaultControllerFamily();

  /// See also [DeadlineDetailsDefaultController].
  DeadlineDetailsDefaultControllerProvider call({
    required DeadlineNavigationService navigationService,
  }) {
    return DeadlineDetailsDefaultControllerProvider(
      navigationService: navigationService,
    );
  }

  @override
  DeadlineDetailsDefaultControllerProvider getProviderOverride(
    covariant DeadlineDetailsDefaultControllerProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deadlineDetailsDefaultControllerProvider';
}

/// See also [DeadlineDetailsDefaultController].
class DeadlineDetailsDefaultControllerProvider
    extends AutoDisposeNotifierProviderImpl<DeadlineDetailsDefaultController,
        TaskDetailsMode> {
  /// See also [DeadlineDetailsDefaultController].
  DeadlineDetailsDefaultControllerProvider({
    required DeadlineNavigationService navigationService,
  }) : this._internal(
          () => DeadlineDetailsDefaultController()
            ..navigationService = navigationService,
          from: deadlineDetailsDefaultControllerProvider,
          name: r'deadlineDetailsDefaultControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deadlineDetailsDefaultControllerHash,
          dependencies: DeadlineDetailsDefaultControllerFamily._dependencies,
          allTransitiveDependencies:
              DeadlineDetailsDefaultControllerFamily._allTransitiveDependencies,
          navigationService: navigationService,
        );

  DeadlineDetailsDefaultControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final DeadlineNavigationService navigationService;

  @override
  TaskDetailsMode runNotifierBuild(
    covariant DeadlineDetailsDefaultController notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(DeadlineDetailsDefaultController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeadlineDetailsDefaultControllerProvider._internal(
        () => create()..navigationService = navigationService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DeadlineDetailsDefaultController,
      TaskDetailsMode> createElement() {
    return _DeadlineDetailsDefaultControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeadlineDetailsDefaultControllerProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeadlineDetailsDefaultControllerRef
    on AutoDisposeNotifierProviderRef<TaskDetailsMode> {
  /// The parameter `navigationService` of this provider.
  DeadlineNavigationService get navigationService;
}

class _DeadlineDetailsDefaultControllerProviderElement
    extends AutoDisposeNotifierProviderElement<DeadlineDetailsDefaultController,
        TaskDetailsMode> with DeadlineDetailsDefaultControllerRef {
  _DeadlineDetailsDefaultControllerProviderElement(super.provider);

  @override
  DeadlineNavigationService get navigationService =>
      (origin as DeadlineDetailsDefaultControllerProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
