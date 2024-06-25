import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../design/dimensions.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        child: SizedBox(
      height: itemHeight,
      child: SearchBar(
        hintText: Utils.searchCityHint,
        focusNode: primaryFocus,
        leading: const Padding(
          padding: EdgeInsets.all(iconPadding),
          child: Icon(
            Icons.search,
            size: searchIconSize,
          ),
        ),
      ),
    ));
  }
}
