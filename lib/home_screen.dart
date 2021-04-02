import 'package:flutter/material.dart';
import 'package:flutter_orders/get_sections.dart';
import 'package:flutter_orders/sections_model.dart';
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
                //  snapShot.error != null
                // todo  handel error data
                return Text("Error");
              } else {
                print("Befor Prov ");
                final prov =
                    Provider.of<GetSectionsProvider>(context).providers;
             //   final getSec = Provider.of<GetSectionsProvider>(context).items;

                print("getSecdddd");
                return Center(child: Text(prov.tradename.toString()));
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
