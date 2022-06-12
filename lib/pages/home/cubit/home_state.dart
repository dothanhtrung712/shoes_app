part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init() = HomeInitial;
  const factory HomeState.loading(bool isLoading) = LoadingState;
  const factory HomeState.exception(String message, String code) =
      HomeExceptionState;
  const factory HomeState.loaded(LoadHomeData data) = HomeLoadedState;
}
