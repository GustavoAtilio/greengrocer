import 'package:greengrocer/src/models/item_model.dart';

class ItemRepository {
  List<ItemModel> getItems() {
    return <ItemModel>[
      ItemModel(
        description:
            'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
        imgUrl: 'assets\\fruits\\apple.png',
        itemName: 'Maçã',
        price: 5.5,
        unit: 'kg',
      ),
      ItemModel(
        imgUrl: 'assets\\fruits\\grape.png',
        itemName: 'Uva',
        price: 7.4,
        unit: 'kg',
        description:
            'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
      ),
      ItemModel(
        imgUrl: 'assets\\fruits\\guava.png',
        itemName: 'Goiaba',
        price: 11.5,
        unit: 'kg',
        description:
            'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
      ),
      ItemModel(
        imgUrl: 'assets\\fruits\\kiwi.png',
        itemName: 'Kiwi',
        price: 2.5,
        unit: 'un',
        description:
            'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
      ),
      ItemModel(
        imgUrl: 'assets\\fruits\\mango.png',
        itemName: 'Manga',
        price: 2.5,
        unit: 'un',
        description:
            'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
      ),
      ItemModel(
        imgUrl: 'assets\\fruits\\papaya.png',
        itemName: 'Mamão papaya',
        price: 8,
        unit: 'kg',
        description:
            'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
      ),
    ];
  }
}
