import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:clinic_management/features/home/views/widgets/doctor_listview_item.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorListview extends StatelessWidget {
  final List<Doctors?>? doctorsListModel;
  const RecommendationDoctorListview({super.key, this.doctorsListModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsListModel?.length ?? 0,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsListModel?[index],
          );
        },
      ),
    );
  }
}
