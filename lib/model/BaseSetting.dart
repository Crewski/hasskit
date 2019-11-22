import 'package:flutter/material.dart';
import 'package:hasskit/helper/Logger.dart';

List<Color> baseSettingDefaultColor = [
  Color(0xffEEEEEE), //EEEEEE Gray
  Color(0xffEF5350), //EF5350 Red
  Color(0xffFFCA28), //FFCA28 Amber
  Color(0xff66BB6A), //66BB6A Green
//    Color(0xff26C6DA), //26C6DA Cyan
  Color(0xff42A5F5), //42A5F5 Blue
  Color(0xffAB47BC), //AB47BC Purple
];
BaseSetting baseSetting =
    BaseSetting(itemsPerRow: 3, themeIndex: 1, colorPicker: [
  baseSettingDefaultColor[0],
  baseSettingDefaultColor[1],
  baseSettingDefaultColor[2],
  baseSettingDefaultColor[3],
  baseSettingDefaultColor[4],
  baseSettingDefaultColor[5],
]);

class BaseSetting {
  int itemsPerRow;
  int themeIndex;
  List<Color> colorPicker = [];
  BaseSetting({
    @required this.itemsPerRow,
    @required this.themeIndex,
    @required this.colorPicker,
  });

  Map<String, dynamic> toJson() => {
        'itemsPerRow': itemsPerRow,
        'themeIndex': themeIndex,
        'colorPicker': colorPicker,
      };

  factory BaseSetting.fromJson(Map<String, dynamic> json) {
    try {
      return BaseSetting(
        itemsPerRow: json['itemsPerRow'] != null ? json['itemsPerRow'] : 3,
        themeIndex: json['themeIndex'] != null ? json['themeIndex'] : 1,
        colorPicker: json['themeIndex'] != null
            ? json['colorPicker']
            : baseSettingDefaultColor,
      );
    } catch (e) {
      log.e("BaseSetting.fromJson $e");
      return null;
    }
  }
}
