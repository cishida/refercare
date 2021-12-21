import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';

class ConversationListItem extends StatelessWidget {
  const ConversationListItem({
    Key? key,
    required ConversationListItemModel item,
    this.selected = false,
  })  : _item = item,
        super(key: key);

  final ConversationListItemModel _item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final Color textColor = selected ? Colors.white : Colors.black;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        color: selected ? ConstColors.primary : Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20.0,
                12.0,
                24.0,
                16.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12.0,
                      top: 3.0,
                    ),
                    child: Image.asset(
                      'assets/images/empty-user-photo.png',
                      width: 42.0,
                      color: ConstColors.divider,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _item.name,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          '${_item.dentalFocus} at ${_item.org}',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: textColor.withOpacity(.6),
                          ),
                        ),
                      ),
                      Text(
                        '"${_item.message!}"',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    _item.created,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: textColor.withOpacity(.8),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1.0,
              color: ConstColors.divider,
            ),
          ],
        ),
      ),
    );
  }
}

class ConversationListItemModel {
  ConversationListItemModel({
    required this.name,
    required this.dentalFocus,
    required this.org,
    required this.created,
    required this.message,
  });

  final String name;
  final String dentalFocus;
  final String org;
  final String created;
  final String message;
}
