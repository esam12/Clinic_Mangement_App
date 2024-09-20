// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponseModel _$SpecializationResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationResponseModel(
      specializationsDataList: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpecializationsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationResponseModelToJson(
        SpecializationResponseModel instance) =>
    <String, dynamic>{
      'data': instance.specializationsDataList,
    };

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Doctors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationsDataToJson(
        SpecializationsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

Doctors _$DoctorsFromJson(Map<String, dynamic> json) => Doctors(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      price: json['appoint_price'] as num?,
      degree: json['degree'] as String,
    );

Map<String, dynamic> _$DoctorsToJson(Doctors instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'appoint_price': instance.price,
      'degree': instance.degree,
    };