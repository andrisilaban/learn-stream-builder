import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/provider/detail_page.dart';
import 'package:provider/provider.dart';

import '../../models/person.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME NAV'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context.read<Person>().name =
                      'Andre ke ${Random().nextInt(10)}';
                  context.read<Person>().age = Random().nextInt(10) + 30;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.refresh,
                  size: 24.0,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailPage(),
                      ));
                },
                icon: const Icon(
                  Icons.navigate_next_sharp,
                  size: 24.0,
                ),
              ),
            ],
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.read<Person>().name ?? 'NO NAME'),
          InkWell(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              print("pickedDate: $pickedDate");
            },
            child: TextFormField(
              initialValue: '2022-08-01',
              maxLength: 20,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Birth date',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                suffixIcon: Icon(Icons.date_range),
                helperText: "What's your name?",
              ),
              onChanged: (value) {},
            ),
          ),
          TextFormField(
            initialValue: 'admin@gmail.com',
            maxLength: 20,
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.blueGrey,
              ),
              suffixIcon: Icon(
                Icons.email,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              helperText: 'Enter your email address',
            ),
            onChanged: (value) {},
            onFieldSubmitted: (value) {},
          ),
          InkWell(
            onTap: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(alwaysUse24HourFormat: true),
                    child: child ?? Container(),
                  );
                },
              );
              print("pickedTime: $pickedTime");
            },
            child: TextFormField(
              initialValue: '08:23',
              maxLength: 20,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Working hour',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                suffixIcon: Icon(Icons.timer),
                helperText: "What's your name?",
              ),
              onChanged: (value) {},
            ),
          ),
          LayoutBuilder(builder: (context, constraint) {
            List<String> itemStringList = ["Female", "Male"];

            return FormField(
              initialValue: false,
              enabled: true,
              builder: (FormFieldState<bool> field) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: "Gender",
                    errorText: field.errorText,
                    helperText: "Your gender",
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: "Female",
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 24.0,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                        iconSize: 16,
                        elevation: 16,
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyText2!.fontSize,
                          fontFamily:
                              Theme.of(context).textTheme.bodyText2!.fontFamily,
                          color: Theme.of(context).textTheme.bodyText2!.color,
                        ),
                        underline: Container(
                          height: 0,
                          color: Colors.grey[300],
                        ),
                        onChanged: (String? newValue) {},
                        items: itemStringList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                value,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ],
      )),
    );
  }
}
