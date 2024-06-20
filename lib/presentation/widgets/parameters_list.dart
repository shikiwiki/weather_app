import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/weather_model.dart';
import 'package:weather_app/domain/use_cases/get_weather_use_case.dart';

import '../design/dimensions.dart';
import 'item.dart';

class ParametersList extends StatefulWidget {
  const ParametersList({super.key});

  @override
  State<ParametersList> createState() => _ParametersListState();
}

class _ParametersListState extends State<ParametersList> {
  // late final GetWeatherUseCase getWeatherUseCase = GetWeatherUseCase();

  Future<WeatherModel>? weather = GetWeatherUseCase().getWeather();

  @override
  void initState() {
    super.initState();
    // weather = (await getWeatherUseCase.getWeather()) as Future<WeatherModel>;
  }

  @override
  Widget build(BuildContext context) {
    if (weather == null) {
      return const SizedBox(); //TODO: add error toast
    } else {
      return Stack(
        children: <Widget>[
          ListView.separated(
            itemCount: 9,
            padding: const EdgeInsets.all(parameterPadding),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: separatorHeight);
            },
            itemBuilder: (BuildContext context, int index) {
              return FutureBuilder(
                  future: weather,
                  builder: (context, snapshot) {
                    return Item(
                        parameterType: snapshot.data!
                            .toParameterList()[index]
                            .parameterType,
                        value: snapshot.data!.toParameterList()[index].value);
                  });
            },
          )
        ],
      );
    } //else
  }
}
