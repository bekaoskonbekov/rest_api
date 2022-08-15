import 'package:flutter/material.dart';
import 'package:rest_api/model.dart';
import 'package:rest_api/rest_api.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<UserModel>? _user = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _user = (await ApiService().getUsers());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.network(
                          _user![index].thumbnailUrl,
                          fit: BoxFit.cover,
                        )),
                    Text(_user![index].id.toString()),
                    Text(_user![index].username),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(_user![index].email),
                    // Text(_userModel![index].website),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
