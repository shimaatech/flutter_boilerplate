import 'package:bloc/bloc.dart';
import 'package:bloc_component/bloc_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/flutter_base.dart';

import 'app/app.dart';
import 'app_constants.dart';

void main() {
  _setup();
  runApp(MyApp());
}

void _setup() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  StateBuilder.builderConfig = BaseStateBuilderConfig();
}


class AppStateBuilderConfig extends BaseStateBuilderConfig {

  @override
  Widget loadingIndicator(BuildContext context, [StateLoading loading]) {
    return AppConstants.defaultProgressIndicator;
  }

}