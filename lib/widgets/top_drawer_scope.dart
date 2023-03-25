import 'package:flutter/material.dart';
import 'package:iphone_desktop/widgets/base/base.dart';
import 'package:platform_utils/platform_utils.dart' as platform;

class TopDrawerScope extends StatelessWidget {
  const TopDrawerScope({
    Key? key,
    required this.child,
    required this.content,
  }) : super(key: key);

  final Widget child;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (platform.instance.isDesktop || platform.instance.isWeb)
          RepaintBoundary(
            key: const ValueKey('top_drawer_repaint_boundary'),
            child: TopDrawerController(
              scrimColor: Colors.transparent,
              edgeDragHeight: 50,
              child: content,
            ),
          ),
      ],
    );
  }
}
