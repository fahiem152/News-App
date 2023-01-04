import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  const CustomScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            body,
            _buildShortAppbar(context),
          ],
        ),
      ),
    );
  }

  Card _buildShortAppbar(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(
            16,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: defaultTargetPlatform == TargetPlatform.iOS
                ? const Icon(CupertinoIcons.back)
                : const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: Text(
              'N',
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}