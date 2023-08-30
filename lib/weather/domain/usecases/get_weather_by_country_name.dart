import 'package:weather/weather/domain/entites/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';
//This class will be the enrty point.
class GetWeatherByCityName {
  final BaseWeatherRepository weatherRepository;
  GetWeatherByCityName(this.weatherRepository);
  Future<Weather> execute(String cityName) async {
    return await weatherRepository.getWeatherByCityName(cityName);
  }
}
