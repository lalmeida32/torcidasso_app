import 'package:flutter/material.dart';
import 'package:torcidasso_app/app_footer.dart';

class AppDraggable extends StatelessWidget {
  const AppDraggable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.2,
      initialChildSize: 0.2,
      maxChildSize: 0.75,
      builder: (BuildContext context, ScrollController scrollController) {
        return AppFooter(scrollController: scrollController);
      },
    );
  }
}
