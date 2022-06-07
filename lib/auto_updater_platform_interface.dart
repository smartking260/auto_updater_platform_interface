library auto_updater_platform_interface;

import 'package:auto_updater_platform_interface/method_channel_auto_updater.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';


abstract class AutoUpdaterPlatform extends PlatformInterface {
  AutoUpdaterPlatform() : super(token: _token);
  static final Object _token = Object();
  static  AutoUpdaterPlatform _instance = MethodChanelAutoUpdater();
  static AutoUpdaterPlatform get instance=> _instance;

  static set instance(AutoUpdaterPlatform instance){
    PlatformInterface.verify(instance, _token);
    _instance=instance;
  }

 Future<void> updateApp(String path){
   throw UnimplementedError('updateApp()unimplemented error');

 }
}
