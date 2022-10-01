import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:notification_permissions/notification_permissions.dart';


const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'custom_channel',
  'Super High Importance Notifications',
  description: 'This channel is used for important notifications.',
  showBadge: true,
  playSound: true,
  importance: Importance.max
);


Future<void> _messageHandler(RemoteMessage message) async {
  FCMHelper.showNotification(message);
}


class FCMHelper {

  static configure() async {

    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('launch_background');

    const InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!.createNotificationChannel(channel);

    await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!.requestPermission();

    await NotificationPermissions.requestNotificationPermissions();


    FirebaseMessaging.instance.getToken().then((value){
      debugPrint('FCM TOKEN : $value');
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });

    FirebaseMessaging.onBackgroundMessage(_messageHandler);

  }

  static showNotification(RemoteMessage message) {

    RemoteNotification? notification = message.notification;

    if (notification != null) {
      FlutterLocalNotificationsPlugin().show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: 'launch_background',
              importance: Importance.max,
              priority: Priority.high,
              channelShowBadge: true,
            ),
          ));
    }

  }

}