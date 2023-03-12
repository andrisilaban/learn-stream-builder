import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/provider_store/models/my_cart.dart';
import 'package:learn_stream_builder/view/provider_store/models/temp_value.dart';
import 'package:learn_stream_builder/view/provider_store/models/user_status.dart';
import 'package:learn_stream_builder/view/provider_store/provider_ecommerce.dart';
import 'package:provider/provider.dart';

class MainEcommerce extends StatelessWidget {
  const MainEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyCart>(
          create: (context) => MyCart(),
        ),
        ChangeNotifierProvider<UserStatus>(
          create: (context) => UserStatus(),
        ),
        Provider<TempValue>(
          create: (context) => TempValue(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderEcommerce(),
      ),
    );
  }
}
