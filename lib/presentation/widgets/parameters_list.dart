import 'package:flutter/material.dart';

import '../../domain/model/location.dart';
import '../../domain/model/weather_model.dart';
import '../../domain/use_cases/get_weather_use_case.dart';
import '../../utils/utils.dart';
import '../design/colors.dart';
import '../design/dimensions.dart';
import '../design/styles.dart';
import '../widgets/date_and_city.dart';
import 'parameter_item.dart';

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

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: Utils.requestDuration));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: _handleRefresh,
      color: primary,
      backgroundColor: secondary,
      strokeWidth: refreshStrokeWidth,
      child: FutureBuilder(
          future: weather,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final parameters = snapshot.data?.toParameterList();
              if (snapshot.hasError) {
                return Dialog(
                    backgroundColor: errorBackground,
                    child: Padding(
                      padding: const EdgeInsets.all(errorPadding),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            snapshot.error.toString(),
                            style: errorStyle,
                          ),
                          const SizedBox(height: separatorHeight),
                          const Icon(
                            Icons.error,
                            color: white,
                            size: errorIconSize,
                          ),
                        ],
                      ),
                    ));
              } else {
                return Stack(
                  children: [
                    ListView.separated(
                      itemCount: parameters!.length + Utils.one,
                      padding: const EdgeInsets.all(parameterPadding),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: separatorHeight);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        if (index == Utils.zero) {
                          return DateAndCity(
                            date: snapshot.data?.date ?? '',
                            cityWithCountryCode:
                                '${snapshot.data?.location?.city}${Utils.enterSymbol}${snapshot.data?.location?.countryCode}',
                            location:
                                snapshot.data?.location ?? Location.empty(),
                          );
                        } else {
                          final parameter = parameters[index - Utils.one];
                          return ParameterItem(
                              parameterType: parameter.parameterType,
                              value: parameter.value,
                              icon: parameter.icon);
                        }
                      },
                    ),
                  ],
                );
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
