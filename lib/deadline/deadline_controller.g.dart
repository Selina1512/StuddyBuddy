// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deadline_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deadlineDefaultControllerHash() =>
    r'1286e4483d28d1759d101a49b7d0864b2b571845';

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

abstract class _$DeadlineDefaultController
    extends BuildlessAutoDisposeNotifier<DeadlineModel> {
  late final DeadlineNavigationService navigationService;
  late final DeadlineExtra deadlineExtra;

  DeadlineModel build({
    required DeadlineNavigationService navigationService,
    required DeadlineExtra deadlineExtra,
  });
}

/// See also [DeadlineDefaultController].
@ProviderFor(DeadlineDefaultController)
const deadlineDefaultControllerProvider = DeadlineDefaultControllerFamily();

/// See also [DeadlineDefaultController].
class DeadlineDefaultControllerFamily extends Family<DeadlineModel> {
  /// See also [DeadlineDefaultController].
  const DeadlineDefaultControllerFamily();

  /// See also [DeadlineDefaultController].
  DeadlineDefaultControllerProvider call({
    required DeadlineNavigationService navigationService,
    required DeadlineExtra deadlineExtra,
  }) {
    return DeadlineDefaultControllerProvider(
      navigationService: navigationService,
      deadlineExtra: deadlineExtra,
    );
  }

  @override
  DeadlineDefaultControllerProvider getProviderOverride(
    covariant DeadlineDefaultControllerProvider provider,
  ) {
    return call(
      navigationService: provider.navigationService,
      deadlineExtra: provider.deadlineExtra,
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
  String? get name => r'deadlineDefaultControllerProvider';
}

/// See also [DeadlineDefaultController].
class DeadlineDefaultControllerProvider extends AutoDisposeNotifierProviderImpl<
    DeadlineDefaultController, DeadlineModel> {
  /// See also [DeadlineDefaultController].
  DeadlineDefaultControllerProvider({
    required DeadlineNavigationService navigationService,
    required DeadlineExtra deadlineExtra,
  }) : this._internal(
          () => DeadlineDefaultController()
            ..navigationService = navigationService
            ..deadlineExtra = deadlineExtra,
          from: deadlineDefaultControllerProvider,
          name: r'deadlineDefaultControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deadlineDefaultControllerHash,
          dependencies: DeadlineDefaultControllerFamily._dependencies,
          allTransitiveDependencies:
              DeadlineDefaultControllerFamily._allTransitiveDependencies,
          navigationService: navigationService,
          deadlineExtra: deadlineExtra,
        );

  DeadlineDefaultControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
    required this.deadlineExtra,
  }) : super.internal();

  final DeadlineNavigationService navigationService;
  final DeadlineExtra deadlineExtra;

  @override
  DeadlineModel runNotifierBuild(
    covariant DeadlineDefaultController notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
      deadlineExtra: deadlineExtra,
    );
  }

  @override
  Override overrideWith(DeadlineDefaultController Function() create) {
    return ProviderOverride(
      origin: this,
      override: DeadlineDefaultControllerProvider._internal(
        () => create()
          ..navigationService = navigationService
          ..deadlineExtra = deadlineExtra,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        navigationService: navigationService,
        deadlineExtra: deadlineExtra,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DeadlineDefaultController, DeadlineModel>
      createElement() {
    return _DeadlineDefaultControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeadlineDefaultControllerProvider &&
        other.navigationService == navigationService &&
        other.deadlineExtra == deadlineExtra;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);
    hash = _SystemHash.combine(hash, deadlineExtra.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeadlineDefaultControllerRef
    on AutoDisposeNotifierProviderRef<DeadlineModel> {
  /// The parameter `navigationService` of this provider.
  DeadlineNavigationService get navigationService;

  /// The parameter `deadlineExtra` of this provider.
  DeadlineExtra get deadlineExtra;
}

class _DeadlineDefaultControllerProviderElement
    extends AutoDisposeNotifierProviderElement<DeadlineDefaultController,
        DeadlineModel> with DeadlineDefaultControllerRef {
  _DeadlineDefaultControllerProviderElement(super.provider);

  @override
  DeadlineNavigationService get navigationService =>
      (origin as DeadlineDefaultControllerProvider).navigationService;
  @override
  DeadlineExtra get deadlineExtra =>
      (origin as DeadlineDefaultControllerProvider).deadlineExtra;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
