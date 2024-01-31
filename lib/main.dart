import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_cart/pages/cart_page.dart';
import 'package:provider_cart/pages/prod_page.dart';
import 'package:provider_cart/providers/cart_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const MyApp()
    )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/products",
      routes: {
        "/products": (context) => const ProductsPage(),
        "/cart": (context) => const CartPage(),
      },
    );
  }
}
