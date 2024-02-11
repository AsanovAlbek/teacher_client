// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      iconUrl: json['icon_url'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon_url': instance.iconUrl,
      'rating': instance.rating,
      'price': instance.price,
      'status': instance.status,
    };
