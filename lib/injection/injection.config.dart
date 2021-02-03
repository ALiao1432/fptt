// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data/api/api.dart';
import '../data/api/debug_fptt_api.dart';
import '../data/api/fptt_api.dart';

/// Environment names
const _release = 'release';
const _debug = 'debug';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);

  // Eager singletons must be registered in the right order
  gh.singleton<Api>(FpttApi(), registerFor: {_release});
  gh.singleton<Api>(DebugFpttApi(), registerFor: {_debug});
  return get;
}
