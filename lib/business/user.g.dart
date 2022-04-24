// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      lastName: json['lastName'] as String? ?? 'Не указано',
      firstName: json['firstName'] as String? ?? 'Не указано',
      age: json['age'] as int? ?? 30,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'age': instance.age,
    };
