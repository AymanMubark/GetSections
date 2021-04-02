import 'package:flutter/material.dart';
import 'package:flutter_orders/get_sections.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: Provider.of<GetSectionsProvider>(context, listen: false)
            .getSectionsApi(),
        builder: (context, AsyncSnapshot snapShot) {
          switch (snapShot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
              break;
            case ConnectionState.active:
              return Center(child: CircularProgressIndicator());
              break;
            case ConnectionState.none:
              //  todo  handel error
              return Text("Error");
              break;
            case ConnectionState.done:
              if (snapShot.hasError) {
                return Text("Error");
              } else {
                return ListView(
                  children: [
                    for (var section
                        in Provider.of<GetSectionsProvider>(context)
                            .data
                            .sections)
                      for (var provider in section.providers)
                        Text(
                            "section ${section.section.nameAr}  proivder name" +
                                provider.tradename)
                  ],
                );
              }
              break;
            default:
              return Text("Error");
          }
        },
      ),
    );
  }
}
