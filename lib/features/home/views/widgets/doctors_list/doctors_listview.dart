import 'package:clinic_management/features/home/data/models/specialization_response_model.dart';
import 'package:clinic_management/features/home/views/widgets/doctors_list/doctor_listview_item.dart';
import 'package:flutter/material.dart';

class DoctorsListview extends StatelessWidget {
  final List<Doctors?>? doctorsListModel;
  const DoctorsListview({super.key, this.doctorsListModel});

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
