// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GasModel _$GasModelFromJson(Map<String, dynamic> json) => GasModel(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastupdate: json['lastupdate'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$GasModelToJson(GasModel instance) => <String, dynamic>{
      'result': instance.result,
      'lastupdate': instance.lastupdate,
      'success': instance.success,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      marka: json['marka'] as String?,
      benzin: (json['benzin'] as num?)?.toDouble(),
      katkili: json['katkili'],
    )
      ..dizel = (json['dizel'] as num?)?.toDouble()
      ..lpg = json['lpg'] as String?;

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'marka': instance.marka,
      'benzin': instance.benzin,
      'dizel': instance.dizel,
      'katkili': instance.katkili,
      'lpg': instance.lpg,
    };
