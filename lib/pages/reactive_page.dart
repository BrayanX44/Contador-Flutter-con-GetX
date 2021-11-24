import 'package:counterx/controllers/reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
        init: ReactiveController(),
        builder: (_) {
          print('reactive');
          return Scaffold(
            appBar: AppBar(title: Text('Fecha'),
            centerTitle: true,
            ),
            body: Center(
                child: Obx(() => ListView.builder(
                      itemBuilder: (__, index) {
                        final String text = _.items[index];
                        return ListTile(
                          title: Text(text),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              _.removeItem(index);
                            },
                          ),
                        );
                      },
                      itemCount: _.items.length,
                    )
                )
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'add',
                  child: Icon(Icons.add),
                  onPressed: () {
                    //_.increment();
                    _.addItem();
                  },
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  heroTag: 'date',
                  child: Icon(Icons.calendar_today),
                  onPressed: () {
                    _.getDate();
                  },
                ),
              ],
            ),
          );
        });
  }
}
