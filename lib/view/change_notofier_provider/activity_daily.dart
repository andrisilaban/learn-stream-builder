import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/activity.dart';
import 'package:learn_stream_builder/view/image_loading/image_loading.dart';
import 'package:learn_stream_builder/view/login/login.dart';
import 'package:learn_stream_builder/view/login/login2.dart';
import 'package:learn_stream_builder/view/login/login3.dart';
import 'package:learn_stream_builder/view/multiprovider/%20main.store.dart';
import 'package:learn_stream_builder/view/my_date_time/my_date_time.dart';
import 'package:learn_stream_builder/view/products_view/products_view.dart';
import 'package:learn_stream_builder/view/provider_store/provider_ecommerce.dart';
import 'package:learn_stream_builder/view/provider_v2/provider_v2.dart';
import 'package:learn_stream_builder/view/single_user_view/single_user_view.dart';
import 'package:learn_stream_builder/view/srp/srp_view.dart';
import 'package:learn_stream_builder/view/statefulbuilder/my_stateful_builder.dart';
import 'package:learn_stream_builder/view/statefulbuilder/tanpa_stateful_builder.dart';
import 'package:learn_stream_builder/view/table/table_book.dart';
import 'package:learn_stream_builder/view/user_regres/single_user_regres.dart';
import 'package:learn_stream_builder/view/user_regres/user_regres.dart';
import 'package:learn_stream_builder/view/users_view/users_view.dart';
import 'package:provider/provider.dart';

import '../custom_bar/custom_bar.dart';
import '../my_pop_up_menu_button/my_pop_up_menu_button.dart';
import '../provider/home_provider.dart';
import '../provider_store/main_ecommerce.dart';
import '../take_image/take_image.dart';
import '../user_regres/user_regres_stateless.dart';

List<String> fruit = ['badminton', 'swimming', 'futsal'];

class ActivityDaily extends StatelessWidget {
  const ActivityDaily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Daily'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context
                      .read<Activity>()
                      .setHeight(Random().nextInt(10) + 170);
                  context.read<Activity>().setAge(Random().nextInt(10));
                  context
                      .read<Activity>()
                      .setHobby(fruit[Random().nextInt(fruit.length)]);
                  context.read<Activity>().setWakeUp(7);
                  context.read<Activity>().setSmile(true);
                },
                icon: const Icon(
                  Icons.replay,
                  size: 24.0,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("PROVIDER 2"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProviderV2(),
                      ));
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("PROVIDER ECOMMERCE"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainEcommerce(),
                      ));
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("List Product"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductsView(),
                      ));
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('Single'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SingleUserView(),
                      ));
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Users"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UsersView(),
                      ));
                },
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Tanpa Stateful Builder"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TanpaStateFulBuilder(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Stateful Builder"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyStatefulBuilder(),
                    ));
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Regres"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserRegres(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Regres Less"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserRegresStateless(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Single User"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SingleUserRegres(),
                    ));
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("Take Image"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const TakePhotoScreen(title: 'photo'),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("Time"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyDateTime(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("CusBar"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomSnackbar(
                        message: 'This is a custom snackbar!',
                        backgroundColor: Colors.white,
                      ),
                    ));
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("PopUpButton"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPopUpMenuButton(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("SRP"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SRPView(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("IMG"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageLoading(),
                    ));
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("LOGIN"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("LOGIN 2"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login2(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("LOGIN 3"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login3(),
                    ));
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("TABLE"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TableBuku(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("MULTI PROV"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainStore(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.photo_camera),
              label: const Text("PROVIDER"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeProvider(),
                    ));
              },
            ),
          ]),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HEIGHT ANDRE ${(context.watch<Activity>().height ?? 170).toString()}',
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Consumer<Activity>(
              builder: (_, activity, __) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Andre',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'HEIGHT ${(activity.height ?? 170).toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'UMUR ${activity.age.toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'HOBBY ${(activity.hobby ?? '-')}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'BANGUN TIDUR ${activity.wakeUp.toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ROCK ${(activity.smile ?? false).toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
