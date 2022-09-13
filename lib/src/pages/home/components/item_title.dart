// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:greengrocer/src/models/item_model.dart';

import '../../../utils/format_price_util.dart';

class ItemTitle extends StatelessWidget {
  const ItemTitle({
    Key? key,
    required this.item,
  }) : super(key: key);
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 1,
          shadowColor: Colors.grey[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //Todo: Imagem
                Expanded(child: Image.asset(item.imgUrl ?? "")),
                //Todo: Nome
                Text(
                  item.itemName ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Todo: Preço - Unidade
                Row(
                  children: <Widget>[
                    Text(
                      priceToCurrency(item.price ?? 0.0),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      '/${item.unit}',
                      style: TextStyle(
                        color: Colors.green.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topRight: Radius.circular(20),
              ),
            ),
            height: 40,
            width: 35,
            child: const Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
