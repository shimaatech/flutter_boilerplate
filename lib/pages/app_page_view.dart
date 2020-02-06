import 'package:bloc_component/bloc_component.dart';
import 'package:flutter_base/flutter_base.dart';

import '../app_constants.dart';

abstract class AppPageView<B extends BaseBloc> extends BasePageView<B> {
  AppPageView(B bloc) : super(bloc);

  @override
  String get title => AppConstants.appTitle;

}