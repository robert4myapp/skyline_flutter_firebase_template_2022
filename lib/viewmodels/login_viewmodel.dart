import 'package:flutter/cupertino.dart';
import 'package:skyline_template_app/viewmodels/base_viewmodel.dart';
import 'package:skyline_template_app/core/enums/view_state.dart';
import 'package:skyline_template_app/locator.dart';
import 'package:skyline_template_app/core/services/navigation_service.dart';
import 'package:skyline_template_app/core/utilities/route_names.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void routeToTeacherView() {
    _navigationService.navigateTo(TeacherViewRoute);
  }

  void routeToHomeView() {
    _navigationService.navigateTo(HomeViewRoute);
  }

  LoginViewModel() {
    setState(ViewState.Busy);
    try {
      print("LoginViewModel Constructor Called()");
    } catch (e) {
      setState(ViewState.Error);
    }
    setState(ViewState.Idle);
  }
}
