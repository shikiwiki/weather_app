import 'package:flutter/material.dart';
import '../model/parameter.dart';
import '../design/dimensions.dart';
import 'item.dart';

class ParametersList extends StatelessWidget {
  final List<Parameter> parameters;

  const ParametersList({required this.parameters, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.separated(
          itemCount: itemCount,
          padding: const EdgeInsets.all(parameterPadding),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: separatorHeight);
          },
          itemBuilder: (BuildContext context, int index) {
            return Item(
              parameterType: parameters[index].parameterType,
              value: parameters[index].value,
            );
          },
        ),
      ],
    );
  }
}
