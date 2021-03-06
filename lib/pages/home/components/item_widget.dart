import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_list/pages/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final Function removeClicked;

  const ItemWidget({Key key, this.item, this.removeClicked}) : super(key: key);
//codigo todo teste
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        var listTile = ListTile(
          title: Text(item.title),
          leading: Checkbox(
            value: item.check,
            onChanged: item.setCheck,
          ),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle),
            color: Colors.red,
            onPressed: removeClicked,
          ),
        );
        return listTile;
      },
    );
  }
}
