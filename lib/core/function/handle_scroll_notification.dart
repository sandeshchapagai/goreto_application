import 'package:flutter/material.dart';

handleScrollNotification({
  required ScrollUpdateNotification scrollNotification,
  required AnimationController animationController,
  required bool isFooterVisible,
  required Function(bool) setFooterVisible,
}) {
  if (scrollNotification.scrollDelta! > 0 && isFooterVisible) {
    animationController.forward();
    setFooterVisible(false);
  } else if (scrollNotification.scrollDelta! < 0 && !isFooterVisible) {
    animationController.reverse();
    setFooterVisible(true);
  }
  return true;
}
