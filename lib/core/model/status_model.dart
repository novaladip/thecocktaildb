import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';

@freezed
class FetchStatus with _$FetchStatus {
  const factory FetchStatus.initial() = FetchStatusInitial;
  const factory FetchStatus.loading() = FetchStatusLoading;
  const factory FetchStatus.failure() = FetchStatusFailure;
  const factory FetchStatus.loaded() = FetchStatusLoaded;
}
