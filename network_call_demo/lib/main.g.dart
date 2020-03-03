// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return NewsItem(
    by: json['by'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'by': instance.by,
      'title': instance.title,
    };
