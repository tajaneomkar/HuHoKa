import 'package:flutter/material.dart';
import 'package:huhoka/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
        viewModelBuilder: () => DashboardViewModel(),
        onViewModelReady: (viewModel) {
          viewModel.init();
          
        },
        builder: (context, model, child) {
          return const SafeArea(
                child: Scaffold(
                 
                ),
              );
             
        });
  }
}
