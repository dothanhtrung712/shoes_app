part of 'detail_cubit.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.init() = DetailInitial;
  const factory DetailState.loading(bool isLoading) = LoadingState;
  const factory DetailState.exception(String message, String code) =
      DetailExceptionState;
  const factory DetailState.loaded(LoadCardItemResult result) =
      DetailLoadedState;
}
