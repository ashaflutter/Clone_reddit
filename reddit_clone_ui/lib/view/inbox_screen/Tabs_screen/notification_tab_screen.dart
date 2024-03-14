import 'package:flutter/material.dart';

import 'package:reddit_clone_ui/models/notification_model.dart';


class NotificationTabContainer extends StatelessWidget {
  const NotificationTabContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
            height: 0,
            thickness: 1,
          );
        },
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Notificationmodel.notification.length,
        itemBuilder: (context, index) {
          final Notification = Notificationmodel.notification[index];
          return ListTile(
            tileColor: const Color(0xFFE5F3FE),
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            dense: true,
            leading: SizedBox(
              height: 40,
              width: 40,
              child: Stack(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(Notification.icon)),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Positioned(
                    top: 16,
                    left: 18,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.5)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5.0,
                            )
                          ],
                          shape: BoxShape.circle),
                      child: Icon(
                        Notification.notificationType,
                        size: 16,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Row(
              children: [
                Text(
                  Notification.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, fontSize: 14),
                ),
                const SizedBox(width: 3),
                Text(
                  ".",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.more_vert, size: 18),
            ),
            subtitle: Text(Notification.description),
          );
        });
  }
}