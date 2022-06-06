import 'package:flutter_oyun/oyun_detail.dart';
import 'package:flutter_oyun/oyun_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Benim Oyunum",
      onGenerateRoute: Router.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

const String listOyun = "/";
const String oyunDetail = "/oyun_detay";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case listOyun:
        return MaterialPageRoute(builder: (_) => oyunListesi());
      case oyunDetail:
        if (args is int) {
          return MaterialPageRoute(
            builder: (_) => oyunDetay(args),
          );
        }
        return _errorRorte();

      default:
        return _errorRorte();
    }
  }

  static Route<dynamic> _errorRorte() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error'),
        ),
        body: Center(
          child: Text("Eror"),
        ),
      );
    });
  }
}
