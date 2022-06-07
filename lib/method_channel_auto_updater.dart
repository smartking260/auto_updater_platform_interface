import 'package:auto_updater_platform_interface/auto_updater_platform_interface.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel = MethodChannel("auto_updater");

class MethodChanelAutoUpdater extends AutoUpdaterPlatform{


  @override
  Future<void> updateApp(String path) async => await  _channel.invokeListMethod<void>("updateApp",{"path": path});


}