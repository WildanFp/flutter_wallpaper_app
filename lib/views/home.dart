import 'package:flutter/material.dart';
import '../data/data.dart';
import '../model/categories_model.dart';
import '../widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategorieModel> categories = new List.empty();
  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff5f8fd),
          borderRadius: BorderRadius.circular(30),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: const <Widget>[
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  hintText: "search wallpapers", border: InputBorder.none),
            )),
            Icon(Icons.search),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
