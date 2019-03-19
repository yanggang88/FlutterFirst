class httpManager {
  //  三天预报
  var forecast_url =
      "https://free-api.heweather.com/s6/weather/forecast?parameters";

  //实况天气
  var new_weather_url =
      "https://free-api.heweather.com/s6/weather/now?parameters";

  /**
   * 三天天气预报
   * 2019年3月12日15:20:04
   * **/
  getThreeWeather(String cityName, NetListner netli) {
  }
}

/***
 * 用来回调成功或者失败的结果
 * */
abstract class NetListner {
  //实况天气
  void onNewWeatherResponse(String body);

  //三天预报
  void onForecastResponse(String body);

  void onError(error);
}
