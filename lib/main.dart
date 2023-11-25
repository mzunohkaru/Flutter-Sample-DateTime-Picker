import 'package:datetime_picker_plus_sample/model/picker_model.dart';
import 'package:datetime_picker_plus_sample/utils.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as picker;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: FlexThemeData.light(scheme: FlexScheme.money),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.money),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datetime Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2018, 3, 5),
                    maxTime: DateTime(2019, 6, 7),
                    theme: const picker.DatePickerTheme(
                        // headerColor: Colors.orange,
                        // backgroundColor: Colors.blue,
                        // itemStyle: TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 18),
                        doneStyle: TextStyle(fontSize: 16)), onChanged: (date) {
                  print(
                    'change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString(),
                  );
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                }, currentTime: DateTime.now(), locale: picker.LocaleType.jp);
              },
              child: const Text(
                '〇年,〇月,〇日',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showTimePicker(context,
                    showTitleActions: true, onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                }, currentTime: DateTime.now());
              },
              child: const Text(
                '〇時,〇分,〇秒',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showTime12hPicker(context,
                    showTitleActions: true, onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                }, currentTime: DateTime.now());
              },
              child: const Text(
                '〇時,〇分,AM or PM',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showDateTimePicker(context,
                    showTitleActions: true, onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                },
                    currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
                    locale: picker.LocaleType.jp);
              },
              child: const Text(
                '〇年〇月〇日〇曜日,〇時〇分',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showDateTimePicker(context,
                    showTitleActions: true, onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
              },
              child: const Text(
                '〇week〇d〇y,〇h,〇m',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showDateTimePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2020, 5, 5, 20, 50),
                    maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                }, locale: picker.LocaleType.jp);
              },
              child: const Text(
                '〇年〇月〇日〇曜日,〇時〇分\nMin ～ Max',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                picker.DatePicker.showPicker(context, showTitleActions: true,
                    onChanged: (date) {
                  print('change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString());
                }, onConfirm: (date) {
                  logger.d('confirm $date');
                },
                    pickerModel: CustomPicker(currentTime: DateTime.now()),
                    locale: picker.LocaleType.jp);
              },
              child: const Text(
                '〇時,〇分,〇秒',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
