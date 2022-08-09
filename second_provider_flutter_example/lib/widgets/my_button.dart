import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_provider_flutter_example/my_model.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context, listen: false);
    return ElevatedButton(
      child: const Text('Do something'),
      onPressed: () {
        myModel.doSomething();
      },
    );
  }
}
