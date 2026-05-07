import 'package:flutter/material.dart';
import 'package:flutter_basics/model/bottomsheet_item_model.dart';

class CustomBottomSheet {
  static void show({
    required BuildContext context,
    required List<BottomsheetItemModel> items,
  }) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            top: Radius.circular(15),
          ),
        ),
        builder: (_) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                height: 5,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(3),
                    right: Radius.circular(3),
                  ),
                ),
              ),
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom: 18,
                  ),
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        Navigator.pop(context);
                        item.onTap();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            228,
                            226,
                            226,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              item.icon,
                              size: 28,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                item.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: items.length,
                ),
              )
            ],
          );
        });
  }
}
