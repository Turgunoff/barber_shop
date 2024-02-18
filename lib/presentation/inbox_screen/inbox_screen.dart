//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/inbox_controller.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 20,
        title: Text('lbl_inbox'.tr),
      ),
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.blue,
              child: Image.asset(
                'assets/images/back.png',
                fit: BoxFit.cover,
              )),
          ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  child: Text('A'),
                ),
                title: Text('Title $index'),
                subtitle: Text(
                  'Subtitleghjgsnkglbfnglzkf $index',
                  maxLines: 1,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.done),
                        Text('12:00'),
                      ],
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
