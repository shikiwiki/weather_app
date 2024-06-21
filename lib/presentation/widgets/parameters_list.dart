import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/weather_model.dart';
import 'package:weather_app/domain/use_cases/get_weather_use_case.dart';
import 'package:weather_app/presentation/design/colors.dart';
import 'package:weather_app/presentation/design/styles.dart';

import '../../utils/utils.dart';
import '../design/dimensions.dart';
import 'item.dart';

class ParametersList extends StatefulWidget {
  const ParametersList({super.key});

  @override
  State<ParametersList> createState() => _ParametersListState();
}

class _ParametersListState extends State<ParametersList> {
  Future<WeatherModel>? weather;

  @override
  void initState() {
    super.initState();
    weather = Future<WeatherModel>.delayed(
        const Duration(seconds: Utils.requestDuration),
        () => GetWeatherUseCase().getWeather());
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('DEBUG_FUTURE_WEATHER: $weather');

    return FutureBuilder(
        future: weather,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Dialog(
                  backgroundColor: errorBackground,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          snapshot.error.toString(),
                          style: errorStyle,
                        ),
                        const SizedBox(height: separatorHeight),
                        const Icon(Icons.error, color: white, size: errorIconSize,),
                      ],
                    ),
                  ));
            }//29 612 30 50
            final parameters = snapshot.data?.toParameterList();
            return Stack(
              children: <Widget>[
                ListView.separated(
                    itemCount: parameters?.length ?? Utils.zero,
                    padding: const EdgeInsets.all(parameterPadding),
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: separatorHeight);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      final parameter = parameters?[index];

                      return Item(
                          parameterType: parameter?.parameterType ?? '',
                          value: parameter?.value ?? '',
                          icon: parameter?.icon);
                    })
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
