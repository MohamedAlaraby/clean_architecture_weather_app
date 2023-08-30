import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entites/weather.dart';
import '../../domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }
}
