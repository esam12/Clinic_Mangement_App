import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: "data")
  List<SpecializationsData?>? specializationsDataList;

  SpecializationResponseModel({this.specializationsDataList});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<Doctors?>? doctorsList;

  SpecializationsData({this.id, this.name, this.doctorsList});

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? image;
  String? email;
  String? phone;
  String? gender;
  @JsonKey(name: "appoint_price")
  num? price;
  String degree;

  Doctors(
      {this.id,
      this.name,
      this.image,
      this.email,
      this.phone,
      this.gender,
      this.price,
      required this.degree});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}