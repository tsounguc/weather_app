part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherModel weatherModel;
  WeatherSuccess({required this.weatherModel});
}

class WeatherFailure extends WeatherState {
  final String error;

  WeatherFailure(this.error);
}

class WeatherLoading extends WeatherState {}
