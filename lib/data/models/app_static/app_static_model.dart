import 'package:flutter/material.dart';

class AppStaticModel {
  dynamic extraDescription, actualPrice, discountedPrice, loyaltyPercentage;
  String? heading,
      image,
      prefixHeading,
      subHeading,
      primaryDescription,
      secondaryDescription,
      tertiaryDescription,
      quaternaryDescription,
      id,
      activeId,
      value,
      type,
      routeName;
  bool isRichText,
      isSvg,
      isCompleted,
      isExpansionTile,
      isAboveExpansionTile,
      isBelowExpansionTile,
      isFromServer,
      isActive,
      isFromDetails;
  int? backgroundColor, index;
  Widget? page;
  Icon? iconData;
  Color? color, borderColor;
  List<AppStaticModel> list;
  num? percent;
  EdgeInsetsGeometry? padding;
  AppStaticModel({
    this.image,
    this.heading,
    this.prefixHeading,
    this.isActive = false,
    this.isCompleted = false,
    this.isAboveExpansionTile = false,
    this.isFromServer = false,
    this.iconData,
    this.isExpansionTile = false,
    this.isBelowExpansionTile = false,
    this.list = const [],
    this.page,
    this.isSvg = true,
    this.isRichText = false,
    this.extraDescription,
    this.isFromDetails = false,
    this.primaryDescription,
    this.secondaryDescription,
    this.tertiaryDescription,
    this.quaternaryDescription,
    this.subHeading,
    this.color,
    this.backgroundColor,
    this.routeName,
    this.actualPrice,
    this.discountedPrice,
    this.id,
    this.value,
    this.index,
    this.type,
    this.loyaltyPercentage,
    this.percent,
    this.activeId,
    this.borderColor,
    this.padding,
  });

  AppStaticModel copyWith({
    String? heading,
    String? subHeading,
    String? id,
    String? activeId,
    String? value,
    String? type,
    dynamic extraDescription,
    dynamic loyaltyPercentage,
  }) {
    return AppStaticModel(
      heading: heading ?? this.heading,
      subHeading: subHeading ?? this.subHeading,
      id: id ?? this.id,
      activeId: activeId ?? this.activeId,
      value: value ?? this.value,
      extraDescription: extraDescription ?? this.extraDescription,
      loyaltyPercentage: loyaltyPercentage ?? this.loyaltyPercentage,
      type: type ?? this.type,
    );
  }
}
