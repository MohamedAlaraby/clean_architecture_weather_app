import 'package:dio/dio.dart';
import 'package:weather/weather/data/models/weather_model.dart';

import '../../../core/utills/constants.dart';

//contract
abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

//concrete implementation.
class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      Response response = await Dio().get(
          '${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.apiKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
