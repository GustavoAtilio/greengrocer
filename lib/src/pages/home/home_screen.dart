import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../../repositories/item_repository.dart';
import 'components/category_title.dart';
import 'components/item_title.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  final itemRepository = ItemRepository();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var items = widget.itemRepository.getItems();
    List<String> list = ["Futas", "Graões", "Verduras", "Temperos", "Cereais"];
    String selectCategory = "Futas";
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 218, 210),
      //TODO: App Bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 25),
            children: [
              TextSpan(
                text: "Green",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "grocer",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeContent: const Text(
                  '2',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.green,
                ),
              ),
            ),
          )
        ],
      ),

      body: Column(
        children: <Widget>[
          //TODO: Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: "Pesquise aqui...",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
          //TODO: Categorias
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTitle(
                  onPressed: () {
                    setState(() {
                      debugPrint("select as category");
                      selectCategory = list[index];
                    });
                  },
                  category: list[index],
                  isSelected: list[index] == selectCategory ? true : false,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(width: 10),
              itemCount: list.length,
            ),
          ),
          //TODO: Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: items.length,
              itemBuilder: (_, index) {
                return ItemTitle(
                  item: items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
