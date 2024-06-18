import 'package:flutter/material.dart';

import '../../domain/model/parameter.dart';
import '../design/dimensions.dart';
import 'item.dart';

class ParametersList extends StatefulWidget {
  final List<Parameter> parameters;

  const ParametersList({required this.parameters, super.key});

  @override
  State<ParametersList> createState() => _ParametersListState();
}

class _ParametersListState extends State<ParametersList> {
  List<Parameter>? _weather;

  @override
  Widget build(BuildContext context) {
    if (_weather == null) {
      return const SizedBox(); //TODO: add error toast
    } else {
      return Stack(
        children: <Widget>[
          ListView.separated(
            itemCount: _weather!.length,
            // itemCount: itemCount,
            padding: const EdgeInsets.all(parameterPadding),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: separatorHeight);
            },
            itemBuilder: (BuildContext context, int index) {
              return Item(
                parameterType: widget.parameters[index].parameterType,
                value: widget.parameters[index].value,
                icon: widget.parameters[index].icon,
              );
            },
          ),
        ],
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }
}
