import 'package:weather_app/data/dto/weather_dto.dart';
import 'package:weather_app/domain/model/weather_model.dart';
import 'package:weather_app/utils/utils.dart';

// extension Mapper on WeatherDto {
extension on WeatherDto {
  WeatherModel toDomain() => WeatherModel(
        sky: weather?[Utils.zero].main ?? '',
        description: weather?[Utils.zero].description ?? '',
        temperature: Utils.kelvinToCelsius(main?.temp),
        feelsLike: Utils.kelvinToCelsius(main?.feelsLike),
        pressure: '${main?.pressure.toString() ?? ''} mbar',
        humidity: '${main?.pressure.toString() ?? ''}%',
        windSpeed: '${wind?.speed.toString() ?? ''} km/h',
        sunrise: Utils.extractTime(sys?.sunrise.toString()),
        sunset: Utils.extractTime(sys?.sunset.toString()),
      );
}
