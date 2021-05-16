import 'package:flutter/material.dart';

import '../widget.dart';

class LoadFailure extends StatelessWidget {
  const LoadFailure({
    Key? key,
    this.message = 'Ops something went wrong',
    required this.onRetry,
  }) : super(key: key);

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextSubtitle(message),
        SpacingVertical(),
        ElevatedButton(
          onPressed: onRetry,
          child: Text('Retry'),
        )
      ],
    );
  }
}
