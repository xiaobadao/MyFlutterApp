import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller : FlutterViewController = self.window.rootViewController! as! FlutterViewController

    let channel : FlutterMethodChannel = FlutterMethodChannel.init(name: "FlutterViewController", binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler { (call, result) in
        if call.method == "openAppMarke"{
            print("flutter invoke native method")
        }
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
