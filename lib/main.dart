import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /** Trong class MyApp có phương thức build và nhận vào biến context, 
     * context lưu trữ thông tin về vị trí của MyApp trong widget */
    // ignore: avoid_print
    print(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learn BuildContext',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.green,
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const ForUseContext(),
    );
  }
}

class ForUseContext extends StatelessWidget {
  const ForUseContext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter BuildContext Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Text 1', style: Theme.of(context).textTheme.headline1),
            const Text('Text 2', style: TextStyle(fontSize: 40)),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Hahahaha'),
                    ));
                  },
                  child: const Text('SHOW SNACKBAR'));
            }),
          ],
        ),
      ),
    );
  }
}
