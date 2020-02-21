import UIKit
import Flutter
import GoogleMaps/GoogleMaps.h

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    [GMSServices provideAPIKey: @"AIzaSyDNZAOH2GZy35eyrYQffEH6lCfdw_RyCC0"]
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
