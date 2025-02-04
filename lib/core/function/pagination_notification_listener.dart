import 'package:flutter/material.dart';

paginationNotificationListener({
  required ScrollUpdateNotification scrollNotification,
  required dynamic nextPage,
  dynamic searchNextPage,
  bool? isSearchActive,
  Function()? searchFunction,
  required Function() fetchFunction,
}) {
  if (scrollNotification.metrics.pixels ==
          scrollNotification.metrics.maxScrollExtent &&
      (nextPage != "" || (searchNextPage != null && searchNextPage != ""))) {
    if (isSearchActive == true && searchFunction != null) {
      searchFunction();
    } else {
      fetchFunction();
    }
  }
  return true;
}
