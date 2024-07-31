// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_deadline_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createDeadlineDefaultControllerHash() =>
    r'0023c3b0213f1cbd3bc42813bd84f8d834cb3110';

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

abstract class _$CreateDeadlineDefaultController
    extends BuildlessAutoDisposeNotifier<CreateDeadlineModel> {
  late final CreateDeadlineNavigationService navigationService;

  CreateDeadlineModel build({
    required CreateDeadlineNavigationService navigationService,
  });
}

/// See also [CreateDeadlineDefaultController].
@ProviderFor(CreateDeadlineDefaultController)
const createDeadlineDefaultControllerProvider =
    CreateDeadlineDefaultControllerFamily();

/// See also [CreateDeadlineDefaultController].
class CreateDeadlineDefaultControllerFamily
    extends Family<CreateDeadlineModel> {
  /// See also [CreateDeadlineDefaultController].
  const CreateDeadlineDefaultControllerFamily();

  /// See also [CreateDeadlineDefaultController].
  CreateDeadlineDefaultControllerProvider call({
    required CreateDeadlineNavigationService navigationService,
  }) {
    return CreateDeadlineDefaultControllerProvider(
      navigationService: navigationService,
    );
  }

  @override
  CreateDeadlineDefaultControllerProvider getProviderOverride(
    covariant CreateDeadlineDefaultControllerProvider provider,
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
  String? get name => r'createDeadlineDefaultControllerProvider';
}

/// See also [CreateDeadlineDefaultController].
class CreateDeadlineDefaultControllerProvider
    extends AutoDisposeNotifierProviderImpl<CreateDeadlineDefaultController,
        CreateDeadlineModel> {
  /// See also [CreateDeadlineDefaultController].
  CreateDeadlineDefaultControllerProvider({
    required CreateDeadlineNavigationService navigationService,
  }) : this._internal(
          () => CreateDeadlineDefaultController()
            ..navigationService = navigationService,
          from: createDeadlineDefaultControllerProvider,
          name: r'createDeadlineDefaultControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createDeadlineDefaultControllerHash,
          dependencies: CreateDeadlineDefaultControllerFamily._dependencies,
          allTransitiveDependencies:
              CreateDeadlineDefaultControllerFamily._allTransitiveDependencies,
          navigationService: navigationService,
        );

  CreateDeadlineDefaultControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.navigationService,
  }) : super.internal();

  final CreateDeadlineNavigationService navigationService;

  @override
  CreateDeadlineModel runNotifierBuild(
    covariant CreateDeadlineDefaultController notifier,
  ) {
    return notifier.build(
      navigationService: navigationService,
    );
  }

  @override
  Override overrideWith(CreateDeadlineDefaultController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CreateDeadlineDefaultControllerProvider._internal(
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
  AutoDisposeNotifierProviderElement<CreateDeadlineDefaultController,
      CreateDeadlineModel> createElement() {
    return _CreateDeadlineDefaultControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateDeadlineDefaultControllerProvider &&
        other.navigationService == navigationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, navigationService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateDeadlineDefaultControllerRef
    on AutoDisposeNotifierProviderRef<CreateDeadlineModel> {
  /// The parameter `navigationService` of this provider.
  CreateDeadlineNavigationService get navigationService;
}

class _CreateDeadlineDefaultControllerProviderElement
    extends AutoDisposeNotifierProviderElement<CreateDeadlineDefaultController,
        CreateDeadlineModel> with CreateDeadlineDefaultControllerRef {
  _CreateDeadlineDefaultControllerProviderElement(super.provider);

  @override
  CreateDeadlineNavigationService get navigationService =>
      (origin as CreateDeadlineDefaultControllerProvider).navigationService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
