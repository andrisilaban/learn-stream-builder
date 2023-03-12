import 'dart:async';

import 'package:flutter/material.dart';

class MyDateTime extends StatefulWidget {
  const MyDateTime({Key? key}) : super(key: key);

  @override
  State<MyDateTime> createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  bool _showCircularProgress = false;

  @override
  void initState() {
    super.initState();
    _scheduleRefresh('17:20:00');
  }

  void _scheduleRefresh(String absenseTime) {
    debugPrint(absenseTime.substring(0, 2));
    debugPrint(absenseTime.substring(3, 5));
    final now = DateTime.now();
    final leaveWorkTime = DateTime(
      now.year,
      now.month,
      now.day,
      17
      // int.parse(absenseTime.substring(0, 2)),
      // int.parse(absenseTime.substring(3, 5)),
    );
    var tempLeaveWorkTime = leaveWorkTime;
    var timeToDelay2 = const Duration();
    debugPrint('now               $now');
    debugPrint('leaveWorkTime     $leaveWorkTime');
    debugPrint('tempLeaveWorkTime $tempLeaveWorkTime');
    debugPrint('isAfter           ${now.isAfter(leaveWorkTime)}');
    if (now.isAfter(leaveWorkTime)) {
      if (now.difference(leaveWorkTime) > const Duration(seconds: 1)) {
        timeToDelay2 = leaveWorkTime.add(Duration(hours: 1)).difference(now);
        if (timeToDelay2.isNegative) {
          debugPrint('timeToDelay2 N $timeToDelay2');
        } else {
          timeToDelay2 = leaveWorkTime.add(Duration(hours: 1)).difference(now);
          if (timeToDelay2.inMinutes > 0) {
            Timer.periodic(Duration(seconds: 5), (timer) {
              setState(() {
                // _showCircularProgress = true;
                return;
              });
              Future.delayed(const Duration(seconds: 3), () {
                setState(() {
                  _showCircularProgress = false;
                });
                // TODO: Refresh the page here
              });
            });
          }
          debugPrint('timeToDelay2 P $timeToDelay2');
        }
      }
    } else {
      final timeToRefresh = tempLeaveWorkTime.add(const Duration(hours: 1));
      debugPrint('timeToRefresh         ${timeToRefresh}');
      final timeToDelay = timeToRefresh.difference(now);
      debugPrint('timeToDelay inDays    ${timeToDelay.inDays}');
      debugPrint('timeToDelay inHours   ${timeToDelay.inHours}');
      debugPrint('timeToDelay inMinutes ${timeToDelay.inMinutes}');
      if (timeToDelay.inMinutes > 0) {
        Timer.periodic(timeToDelay, (timer) {
          setState(() {
            _showCircularProgress = true;
          });
          Future.delayed(const Duration(seconds: 3), () {
            setState(() {
              _showCircularProgress = false;
            });
            // TODO: Refresh the page here
          });
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _showCircularProgress
            ? const CircularProgressIndicator()
            : const Text('Page content'),
      ),
    );
  }
}
