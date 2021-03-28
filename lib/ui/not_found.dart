import 'package:flutter/material.dart';

class NotFoundView extends StatelessWidget {
  static const pageTitle = '/NotFound';

  const NotFoundView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('NOT FOUND PAGE'),
      ),
    );
  }
}
