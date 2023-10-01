// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:sub_newbie_dicoding/model/detail_receipt_food_entity.dart';

JsonConvert jsonConvert = JsonConvert();

typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);
typedef ConvertExceptionHandler = void Function(Object error, StackTrace stackTrace);

class JsonConvert {
  static ConvertExceptionHandler? onError;

  static Map<String, JsonConvertFunction> get convertFuncMap =>
      {
        (DetailReceiptFoodEntity).toString(): DetailReceiptFoodEntity.fromJson,
        (DetailReceiptFoodExtendedIngredients)
            .toString(): DetailReceiptFoodExtendedIngredients.fromJson,
        (DetailReceiptFoodExtendedIngredientsMeasures)
            .toString(): DetailReceiptFoodExtendedIngredientsMeasures.fromJson,
        (DetailReceiptFoodExtendedIngredientsMeasuresUs)
            .toString(): DetailReceiptFoodExtendedIngredientsMeasuresUs
            .fromJson,
        (DetailReceiptFoodExtendedIngredientsMeasuresMetric)
            .toString(): DetailReceiptFoodExtendedIngredientsMeasuresMetric
            .fromJson,
        (DetailReceiptFoodWinePairing).toString(): DetailReceiptFoodWinePairing
            .fromJson,
        (DetailReceiptFoodWinePairingProductMatches)
            .toString(): DetailReceiptFoodWinePairingProductMatches.fromJson,
        (DetailReceiptFoodAnalyzedInstructions)
            .toString(): DetailReceiptFoodAnalyzedInstructions.fromJson,
        (DetailReceiptFoodAnalyzedInstructionsSteps)
            .toString(): DetailReceiptFoodAnalyzedInstructionsSteps.fromJson,
        (DetailReceiptFoodAnalyzedInstructionsStepsIngredients)
            .toString(): DetailReceiptFoodAnalyzedInstructionsStepsIngredients
            .fromJson,
        (DetailReceiptFoodAnalyzedInstructionsStepsEquipment)
            .toString(): DetailReceiptFoodAnalyzedInstructionsStepsEquipment
            .fromJson,
        (DetailReceiptFoodAnalyzedInstructionsStepsLength)
            .toString(): DetailReceiptFoodAnalyzedInstructionsStepsLength
            .fromJson,
      };

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => _asT<T>(e, enumConvert: enumConvert))
          .toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) =>
      _asT<T>(e, enumConvert: enumConvert)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      if (onError != null) {
        onError!(e, stackTrace);
      }
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        if (value == null) {
          return null;
        }
        return convertFuncMap[type]!(Map<String, dynamic>.from(value)) as T;
      } else {
        throw UnimplementedError('$type unimplemented');
      }
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (<DetailReceiptFoodEntity>[] is M) {
      return data.map<DetailReceiptFoodEntity>((Map<String, dynamic> e) =>
          DetailReceiptFoodEntity.fromJson(e)).toList() as M;
    }
    if (<DetailReceiptFoodExtendedIngredients>[] is M) {
      return data.map<DetailReceiptFoodExtendedIngredients>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodExtendedIngredients.fromJson(e)).toList() as M;
    }
    if (<DetailReceiptFoodExtendedIngredientsMeasures>[] is M) {
      return data.map<DetailReceiptFoodExtendedIngredientsMeasures>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodExtendedIngredientsMeasures.fromJson(e))
          .toList() as M;
    }
    if (<DetailReceiptFoodExtendedIngredientsMeasuresUs>[] is M) {
      return data.map<DetailReceiptFoodExtendedIngredientsMeasuresUs>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodExtendedIngredientsMeasuresUs.fromJson(e))
          .toList() as M;
    }
    if (<DetailReceiptFoodExtendedIngredientsMeasuresMetric>[] is M) {
      return data.map<DetailReceiptFoodExtendedIngredientsMeasuresMetric>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodExtendedIngredientsMeasuresMetric.fromJson(e))
          .toList() as M;
    }
    if (<DetailReceiptFoodWinePairing>[] is M) {
      return data.map<DetailReceiptFoodWinePairing>((Map<String, dynamic> e) =>
          DetailReceiptFoodWinePairing.fromJson(e)).toList() as M;
    }
    if (<DetailReceiptFoodWinePairingProductMatches>[] is M) {
      return data.map<DetailReceiptFoodWinePairingProductMatches>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodWinePairingProductMatches.fromJson(e)).toList() as M;
    }
    if (<DetailReceiptFoodAnalyzedInstructions>[] is M) {
      return data.map<DetailReceiptFoodAnalyzedInstructions>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodAnalyzedInstructions.fromJson(e)).toList() as M;
    }
    if (<DetailReceiptFoodAnalyzedInstructionsSteps>[] is M) {
      return data.map<DetailReceiptFoodAnalyzedInstructionsSteps>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodAnalyzedInstructionsSteps.fromJson(e)).toList() as M;
    }
    if (<DetailReceiptFoodAnalyzedInstructionsStepsIngredients>[] is M) {
      return data.map<DetailReceiptFoodAnalyzedInstructionsStepsIngredients>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodAnalyzedInstructionsStepsIngredients.fromJson(e))
          .toList() as M;
    }
    if (<DetailReceiptFoodAnalyzedInstructionsStepsEquipment>[] is M) {
      return data.map<DetailReceiptFoodAnalyzedInstructionsStepsEquipment>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodAnalyzedInstructionsStepsEquipment.fromJson(e))
          .toList() as M;
    }
    if (<DetailReceiptFoodAnalyzedInstructionsStepsLength>[] is M) {
      return data.map<DetailReceiptFoodAnalyzedInstructionsStepsLength>((
          Map<String, dynamic> e) =>
          DetailReceiptFoodAnalyzedInstructionsStepsLength.fromJson(e))
          .toList() as M;
    }

    debugPrint("${M.toString()} not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is M) {
      return json;
    }
    if (json is List) {
      return _getListChildType<M>(
          json.map((e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.convert<M>(json);
    }
  }
}