import '../../data/repository/weather_repository.dart';
import '../model/weather_model.dart';

class GetWeatherUseCase {
  late final WeatherRepository repository = WeatherRepository();

  Future<WeatherModel> getWeather(String city) async {
    var weatherDto = await repository.getWeather(city);
    var weatherModel = weatherDto.toDomain();
    return weatherModel;
  }
}
