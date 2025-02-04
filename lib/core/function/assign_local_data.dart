import '../../data/models/app_static/app_static_model.dart';

({List<dynamic> list, dynamic model}) assignDynamicLocalData({
  dynamic existingModel,
  List<dynamic> existingList = const [],
  bool isList = false,
  bool? canRemove = false,
  required dynamic objectPlaceHolder,
  required dynamic selectedData,
}) {
  if (isList) {
    if (existingList.any((element) => element.id == selectedData?.id)) {
      return (
        list: List<dynamic>.from(existingList)
          ..removeWhere((element) => element.id == selectedData?.id),
        model: objectPlaceHolder,
      );
    }
    return (
      list: List<dynamic>.from(existingList)..add(selectedData),
      model: objectPlaceHolder,
    );
  }

  if (existingModel?.id == selectedData?.id && (canRemove ?? false)) {
    return (list: [], model: objectPlaceHolder);
  }
  return (list: [], model: selectedData);
}

({List<AppStaticModel> list, AppStaticModel model}) assignLocalData({
  AppStaticModel? existingModel,
  List<AppStaticModel> existingList = const [],
  bool isList = false,
  bool canRemove = false,
  required AppStaticModel? selectedData,
}) {
  if (isList) {
    if (existingList.any((element) => element.id == selectedData?.id)) {
      return (
        list: List<AppStaticModel>.from(existingList)
          ..removeWhere((element) => element.id == selectedData?.id),
        model: AppStaticModel()
      );
    }
    return (
      list: List<AppStaticModel>.from(existingList)
        ..add(selectedData ?? AppStaticModel()),
      model: AppStaticModel()
    );
  }

  if (existingModel?.id == selectedData?.id && canRemove) {
    return (list: [], model: AppStaticModel());
  }
  return (list: [], model: selectedData ?? AppStaticModel());
}
