import 'package:aliveyuzu/widgets/latest_image_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LatestItemController {

  List<Widget> getLatestItemList() {
    List<Widget> itemList = [];

    for (var i = 0; i < 10; i++) {
      itemList.add(LatestImageItem(
        tempImage: 'DevBlog #' + i.toString(),
        title: 'Devblog for ' +
            DateFormat("d MMMM y").format(DateTime.now().add(Duration(days: i))),
      ));
      itemList.add(
        const SizedBox(
          width: 50,
        ),
      );
    }

    return itemList;
  }
}
